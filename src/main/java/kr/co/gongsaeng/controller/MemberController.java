package kr.co.gongsaeng.controller;

import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.gongsaeng.service.MemberService;
import kr.co.gongsaeng.service.SendMailService;
import kr.co.gongsaeng.vo.MailAuthInfoVO;
import kr.co.gongsaeng.vo.MemberVO;
import net.nurigo.sdk.NurigoApp;
import net.nurigo.sdk.message.exception.NurigoMessageNotReceivedException;
import net.nurigo.sdk.message.model.Message;
import net.nurigo.sdk.message.service.DefaultMessageService;

@Controller
public class MemberController {

	@Autowired
	MemberService service;
	@Autowired
	private SendMailService mailService;
	
	@Value("${sms_api_key}")
	private String sms_api_key;
	@Value("${sms_secret_key}")
	private String sms_secret_key;
	@Value("${sms_sender_number}")
	private String sms_sender_number;
	private int phoneAuthCode;

	private static final Logger log = LoggerFactory.getLogger(MemberController.class);
	@GetMapping("member/login")
	public String login(Model model, HttpServletRequest request, HttpSession session) {
		Cookie[] cookies = request.getCookies();
	    if (cookies != null) {
	        for (Cookie cookie : cookies) {
	            if (cookie.getName().equals("cId")) {
	                model.addAttribute("cId", cookie.getValue());
	                break;
	            }
	        }
	    }
	    SecureRandom random = new SecureRandom();
	    BigInteger bigInteger = new BigInteger(130, random);
	    String naverState = bigInteger.toString();
	    session.setAttribute("naverState", naverState);
		return "member/login";
	}

	@PostMapping("member/loginPro")
	public String loginProlonginPro(MemberVO member, HttpSession session, Model model, HttpServletResponse response) {
		System.out.println(member);
		MemberVO dbMember = service.getMember(member);

		if (dbMember == null) {
			System.out.println(dbMember);
			model.addAttribute("msg", "아이디/비밀번호를 확인해주세요");
			return "fail_back";
		}

		System.out.println("dbMember : " + dbMember);

		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

		// 비밀번호 일치하지 않음 처리
		if (!passwordEncoder.matches(member.getMember_passwd(), dbMember.getMember_passwd())) {
			model.addAttribute("msg", "아이디/비밀번호를 확인해주세요");
			return "fail_back";

		} else { // 로그인 성공
			
			if(member.getRememberId() != null && member.getRememberId().equals("on")) {
				Cookie cookie = new Cookie("cId", member.getMember_id());
				
				cookie.setMaxAge(60 * 60 * 24 * 7);
				response.addCookie(cookie);
			}
			// 세션 객체에 로그인 성공한 아이디를 "sId" 속성으로 추가
			session.setAttribute("sId", dbMember.getMember_id());
			// 메인닉네임표시
			session.setAttribute("sNick", dbMember.getMember_nick());
			// 메인화면 회원상태 구별을 위한 세션
			session.setAttribute("sCategory", dbMember.getMember_category());
			// 메인 업주화면 이름 표시를위한 세션
			session.setAttribute("sName", dbMember.getMember_name());
			return "redirect:/";
		}
	}

	@GetMapping("member/findId")
	public String findId() {
		return "member/find_id";
	}

	@PostMapping("member/findIdPro")
	public String findIdPro(MemberVO member, HttpSession session, Model model) {
		System.out.println(member); // form action 값 잘 넘어왔는지 찍어보기
		member.setMember_email(member.getMember_email1() + "@" + member.getMember_email2());
		System.out.println(member); // email 두개 결합 잘 되었나 확인
		
		MemberVO dbMember = service.getValidMember(member);
		
		if(dbMember == null) {
			model.addAttribute("msg", "존재하지 않는 회원입니다.");
			return "fail_back";
		} 
		
		String auth_code = mailService.sendIdAuthMail(member); // MemberVO 객체 전달 및 이메일 전송 완료
		service.registMailAuthInfo(member.getMember_email(), auth_code);
		model.addAttribute("msg", "인증메일이 발송되었습니다. 메일을 확인하세요");
		return "popup_close";

	}

	@GetMapping("member/findPasswd")
	public String findPasswd() {
		return "member/find_passwd";
	}

	@PostMapping("member/findPasswdPro")
	public String findPasswdPro(MemberVO member, HttpSession session, Model model) {
		System.out.println(member);
		
		
		member.setMember_email(member.getMember_email1()+"@"+member.getMember_email2());
		
		MemberVO dbMember = service.getValidMember(member);
		
		if(dbMember == null) {
			model.addAttribute("msg", "존재하지 않는 회원입니다.");
			return "fail_back";
		}
		
		String auth_code = mailService.sendPasswdAuthMail(member); // MemberVO 객체 전달 및 이메일 전송 완료
		service.registMailAuthInfo(member.getMember_id(), auth_code);
		model.addAttribute("msg", "인증메일이 발송되었습니다. 메일을 확인하세요");
		return "popup_close";
	}

	@GetMapping("MemberIdEmailAuth")
	public String MemberIdEmailAuth(MailAuthInfoVO authInfo, HttpSession session, Model model) {
		
		System.out.println("authInfo : " + authInfo);
		
		// MemberService - requestEmailAuth() 메서드 호출하여 인증 요청
		// => 파라미터 : MailAuthInfoVO 객체   리턴타입 : boolean(isAuthSuccess)
		boolean isAuthSuccess = service.requestEmailAuth(authInfo);
		
		if(isAuthSuccess) { // 성공
//			model.addAttribute("msg", "인증 성공!");
//			model.addAttribute("targetURL", "login");
			
			MemberVO member = service.requestIdAuth(authInfo);
			model.addAttribute("member", member);
			service.removeAuthInfo(authInfo.getMail_auth_email()); // 인증정보 삭제
			return "member/find_id_result";
		} else { // 실패 
			model.addAttribute("msg", "인증 실패!");
			return "fail_back";
		}
	}
	
	
	
	@GetMapping("MemberPasswdEmailAuth")
	public String MemberPasswdEmailAuth(MailAuthInfoVO authInfo, HttpSession session, Model model) {
		
		System.out.println("authInfo : " + authInfo);
		
		// MemberService - requestEmailAuth() 메서드 호출하여 인증 요청
		// => 파라미터 : MailAuthInfoVO 객체   리턴타입 : boolean(isAuthSuccess)
		boolean isAuthSuccess = service.requestEmailAuth(authInfo);
		System.out.println("불린값" + isAuthSuccess);
		if(isAuthSuccess) { // 성공
			model.addAttribute("authInfo", authInfo);
			return "member/find_passwd_result";
		} else { // 실패 
			model.addAttribute("msg", "인증 실패!");
			return "fail_back";
		}
	}
	
	@PostMapping("updatePasswdPro")
	public String updatePasswdPro(MemberVO member, HttpSession session, Model model, MailAuthInfoVO authInfo) {
		
		MailAuthInfoVO dbAuthInfo = service.getAuthInfo(authInfo);
		
		System.out.println(member);
		System.out.println(authInfo);
		if(dbAuthInfo == null) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String securePasswd = passwordEncoder.encode(member.getMember_passwd());
		member.setMember_passwd(securePasswd);
		
		int updateCount = service.updatePasswd(member);
		if(updateCount > 0) { //성공
			model.addAttribute("msg", "비밀번호가 변경되었습니다.");
			model.addAttribute("targetURL", "member/login");
			service.removeAuthInfo(authInfo.getMember_id()); // 이거 호출하라 함
			return "forward";
		}else {
			model.addAttribute("msg", "비밀번호 변경 오류! 인증을 다시 진행하세요");
			return "fail_back";
		}
	}
	
	
	//======================================================회원가입
	@GetMapping("member/joinAgree")
	public String joinAgree() {
		return "member/join_agree";
	}

	@GetMapping("member/join")
	public String join(@RequestParam(defaultValue = "") String agreeAd, Model model) {
		model.addAttribute("agreeAd", agreeAd);
		return "member/join";
	}

	@PostMapping("member/joinPro")
	public String joinPro(@RequestParam(defaultValue = "") String agreeAd, MemberVO member, Model model) {

		// 암호화
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String securePasswd = passwordEncoder.encode(member.getMember_passwd());
		member.setMember_passwd(securePasswd);
		log.info(agreeAd);
		
		if(agreeAd.equals("on")) {
			member.setMember_alert_status("11111");
		}else {
			member.setMember_alert_status("11101");
		}
		log.info(member.getMember_alert_status());
		int insertCount = service.registMember(member);
		if (insertCount > 0) { // 성공
			model.addAttribute("msg", "회원가입이 완료되었습니다.");
			model.addAttribute("targetURL", "login");
			return "forward";
		} else { // 실패
			// 실패 시 메세지 출력 및 이전페이지로 돌아가는 기능을 모듈화 한 fail_back.jsp 페이지
			model.addAttribute("msg", "회원 가입 실패!");
			return "fail_back";
		}

		
	}

	@ResponseBody // 응답 데이터를 body로 그대로 활용하기 위해 이 어노테이션을 적용!
	@GetMapping("member/CheckDupId")
	public String checkDupId(MemberVO member) {
		MemberVO dbMember = service.getMember(member);
		// 조회 결과 판별
		if (dbMember == null) {
			return "false";
		} else {
			return "true";
		}

	} // checkDupId()
		// MemberCheckDupNick(닉네임 중복확인)에 대한 비지니스 로직 처리===============================

	@ResponseBody
	@GetMapping("member/CheckDupNick")
	public String checkDupNick(MemberVO member) {
		MemberVO dbMember = service.getMember(member);

		if (dbMember == null) {
			return "false";
		} else {
			return "true";
		}
	} // MemberCheckDupNick()
	
	@ResponseBody
	@GetMapping("member/CheckDupPhone")
	public String checkDupPhone(MemberVO member) {
		MemberVO dbMember = service.getMember(member);
		
		if (dbMember == null) {
			return "false";
		} else {
			return "true";
		}
	} // MemberCheckDupNick()
	
	@ResponseBody
	@GetMapping("member/CheckDupEmail")
	public String checkDupEmail(MemberVO member) {
		MemberVO dbMember = service.getMember(member);
		
		if (dbMember == null) {
			return "false";
		} else {
			return "true";
		}
	} // MemberCheckDupNick()
		
	@GetMapping("member/phoneAuthRequest")
	@ResponseBody
	public String phoneAuth(MemberVO member) {
		DefaultMessageService messageService =  NurigoApp.INSTANCE.initialize(sms_api_key, sms_secret_key, "https://api.coolsms.co.kr");
		// Message 패키지가 중복될 경우 net.nurigo.sdk.message.model.Message로 치환하여 주세요
		phoneAuthCode = (int)(Math.random() * 9000.0D + 1000.0D);
		
		Message message = new Message();
		message.setFrom(sms_sender_number);
		message.setTo(member.getMember_phone());
		message.setText("[공생] 회원가입 인증번호는 " + phoneAuthCode + "입니다.");

		try {
		  // send 메소드로 ArrayList<Message> 객체를 넣어도 동작합니다!
		  messageService.send(message);
		  return "true";
		} catch (NurigoMessageNotReceivedException exception) {
		  // 발송에 실패한 메시지 목록을 확인할 수 있습니다!
		  System.out.println(exception.getFailedMessageList());
		  System.out.println(exception.getMessage());
		  return "false";
		} catch (Exception exception) {
		  System.out.println(exception.getMessage());
		  return "false";
		}
	}
	
	@GetMapping("member/phoneAuthIsCorrect")
	@ResponseBody
	public String phoneAuthIsCorrect(@RequestParam(defaultValue = "")int phone_auth_code) {
		System.out.println(phoneAuthCode);
		System.out.println(phone_auth_code);
		if(phoneAuthCode == phone_auth_code) {
			return "true";
		}else {
			return "false";
		}
	}
	@GetMapping("member/logout")
	public String logout(HttpSession session) {
		// 세션 초기화
		session.invalidate();
		return "redirect:/";
	}

	@GetMapping("kakaoCallback")
	public String kakaoCallback(@RequestParam Map<String, String>map) {
		System.out.println(map);
		return "";
	}
	
	@GetMapping("naverCallback")
	public String naverCallback(@RequestParam Map<String, String>map, HttpSession session, Model model) {
		System.out.println(map);
		
		if(!map.get("state").equals(session.getAttribute("naverState"))) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			return "fail_back";
		}
		
		
		return "";
	}
}
