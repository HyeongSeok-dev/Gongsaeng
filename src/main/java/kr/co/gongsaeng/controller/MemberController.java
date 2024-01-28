package kr.co.gongsaeng.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.gongsaeng.service.MemberService;
import kr.co.gongsaeng.vo.MemberVO;

@Controller
public class MemberController {

	@Autowired
	MemberService service;

	@GetMapping("member/login")
	public String login() {
		return "member/login";
	}

	@PostMapping("member/loginPro")
	public String loginProlonginPro(MemberVO member, HttpSession session, Model model) {
		System.out.println(member);
		MemberVO dbMember = service.getMember(member);

		if (dbMember == null) {
			System.out.println(dbMember);
			model.addAttribute("msg", "잘못 입력하셨습니다. 입력값을 확인해주세요");
			return "fail_back";
		}

		System.out.println("dbMember : " + dbMember);

		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

		// 비밀번호 일치하지 않음 처리
		if (!passwordEncoder.matches(member.getMember_passwd(), dbMember.getMember_passwd())) {
			model.addAttribute("msg", "아이디 또는 비밀번호가 틀렸습니다.");
			return "fail_back";

		} else { // 로그인 성공
			// 세션 객체에 로그인 성공한 아이디를 "sId" 속성으로 추가
			session.setAttribute("sId", dbMember.getMember_id());
			// 메인닉네임표시
			session.setAttribute("sNick", dbMember.getMember_nick());
			// 메인화면 회원상태 구별을 위한 세션
			session.setAttribute("sCategory", dbMember.getMember_category());
			// 메인 업주화면 이름 표시를위한 세션
			session.setAttribute("sName", dbMember.getMember_name());
			// user_idx가 외래키여서 session에 sIdx 넣었음
			return "redirect:/";
		}
	}

	@GetMapping("member/findId")
	public String findId() {
		return "member/find_id";
	}

	@PostMapping("member/findIdPro")
	public String findIdPro() {
		return "";
	}

	@GetMapping("member/findPasswd")
	public String findPasswd() {
		return "member/find_passwd";
	}

	@PostMapping("member/findPasswdPro")
	public String findPasswdPro() {
		return "";
	}

	@GetMapping("member/joinAgree")
	public String joinAgree() {
		return "member/join_agree";
	}

	@GetMapping("member/join")
	public String join() {
		return "member/join";
	}

	@PostMapping("member/joinPro")
	public String joinPro(MemberVO member, Model model) {

		// 암호화
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String securePasswd = passwordEncoder.encode(member.getMember_passwd());
		member.setMember_passwd(securePasswd);

//	      member.setUser_category(1); //임시 - 일반회원(1) or 업주회원(2)

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
	
	@GetMapping("member/logout")
	public String logout(HttpSession session) {
		// 세션 초기화
		session.invalidate();
		return "redirect:/";
	}
	

}
