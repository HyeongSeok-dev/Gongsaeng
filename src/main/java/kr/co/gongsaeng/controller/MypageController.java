package kr.co.gongsaeng.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.co.gongsaeng.service.MypageService;
import kr.co.gongsaeng.vo.MemberVO;

@Controller
public class MypageController {

	@Autowired
	MypageService service;

	@GetMapping("mypage/main")
	public String main(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_main";
	}

	@GetMapping("mypage/reservation")
	public String reservation(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_reservation";
	}

	@GetMapping("mypage/reservationDetail")
	public String reservationDetail(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_reservation_detail";
	}

	@GetMapping("mypage/reservationCancel")
	public String reservationCancel(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_reservation_cancel";
	}

	@PostMapping("mypage/reservationCancelPro")
	public String reservationCancelPro(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "";
	}

	@GetMapping("mypage/alert")
	public String alert(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_alert";
	}

	@GetMapping("mypage/messages")
	public String messages(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_messages";
	}

	@GetMapping("mypage/coupon")
	public String coupon(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_coupon";
	}

	@GetMapping("mypage/cash")
	public String cash(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);

		String rNum = RandomStringUtils.randomNumeric(32);
		session.setAttribute("state", rNum);

		return "mypage/my_cash";
	}

	@GetMapping("mypage/point")
	public String point(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_point";
	}

	@GetMapping("mypage/bookmark")
	public String bookmark(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_bookmark";
	}

	@GetMapping("mypage/following")
	public String following(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_following";
	}

	@GetMapping("mypage/recent")
	public String recent(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_recent";
	}

	@GetMapping("mypage/reviewWrite")
	public String reviewWrite(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_review_write";
	}

	@GetMapping("mypage/reviewList")
	public String reviewList(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_review_list";
	}

	@GetMapping("mypage/report")
	public String report(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_report";
	}

	@PostMapping("mypage/reportPro")
	public String reportPro(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "";
	}

	@GetMapping("mypage/community")
	public String community(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_community";
	}

	@GetMapping("mypage/communityRecent")
	public String communityRecent(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_communityRecent";
	}

	@GetMapping("mypage/modifyProfile")
	public String modifyProfile(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);

		String email = member.getMember_email();

		String[] emailArr = email.split("@");

		member.setMember_email1(emailArr[0]);
		member.setMember_email2(emailArr[1]);
		model.addAttribute("member", member);

		return "mypage/my_modifyProfile";
	}

	@PostMapping("mypage/modifyProfilePro")
	public String modifyProfilePro(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}

		// 프로필 사진 변경하기
		String uploadDir = "/resources/upload";
		String saveDir = session.getServletContext().getRealPath(uploadDir);
		String subDir = "";
		LocalDate now = LocalDate.now();
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
		subDir = now.format(dtf);
		saveDir += File.separator + subDir;

		try {
			Path path = Paths.get(saveDir); // 파라미터로 업로드 경로 전달
			Files.createDirectories(path); // 파라미터로 Path 객체 전달
		} catch (IOException e) {
			e.printStackTrace();
		}

		MultipartFile mFile = member.getM_file();
		System.out.println("원본파일명 : " + mFile.getOriginalFilename());

		member.setMember_img("");

		String imgName = UUID.randomUUID().toString().substring(0, 8) + "_" + mFile.getOriginalFilename();
		System.out.println(imgName);
		if (!mFile.getOriginalFilename().equals("")) {
			member.setMember_img(subDir + "/" + imgName);
		}

		System.out.println("실제 업로드 파일명 : " + member.getMember_img());
		// memberService - getmember() 메서드 호출하여 회원 정보 조회 요청(패스워드 비교용)
		// => 파라미터 : memberInfo 객체 리턴타입 : memberInfo(dbmember)

		// BCryptPasswordEncoder 클래스를 활용하여 입력받은 기존 패스워드와 DB 패스워드 비교
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

		member.setMember_passwd(passwordEncoder.encode(member.getMember_passwd()));

		member.setMember_email(member.getMember_email1()+"@"+member.getMember_email2());
		// memberService - modifymember() 메서드 호출하여 회원 정보 수정 요청
		// => 파라미터 : memberInfo 객체, 새 패스워드(newPasswd) 리턴타입 : int(updateCount)
		int updateCount = service.modifymember(member);

		// 회원 정보 수정 요청 결과 판별
		// => 실패 시 "fail_back" 페이지 포워딩 처리("회원정보 수정 실패!")
		// => 성공 시 "memberInfo" 서블릿 리다이렉트
		if (updateCount > 0) { // 성공 시
			session.setAttribute("msg", "회원정보 수정이 완료되었습니다.");
			if (!mFile.getOriginalFilename().equals("")) {
				try {
					mFile.transferTo(new File(saveDir, imgName));
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					model.addAttribute("msg", "회원정보 수정 실패!");
					return "fail_back";
				}
			}
			model.addAttribute("msg", "회원정보가 수정되었습니다!");
			model.addAttribute("targetURL", "modifyProfile");
			return "forward";
		} else { // 실패 시
			model.addAttribute("msg", "회원정보 수정 실패!");
			return "fail_back";
		}

	}
	
	@ResponseBody
	@PostMapping("mypage/withdraw")
	public String withdraw(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		
		member.setMember_id(sId);
		MemberVO dbmember = service.getMemberInfo(member);
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
        if (!passwordEncoder.matches(member.getMember_passwd(), dbmember.getMember_passwd())) {
        	return "false";
        }
        
        int updateCount = service.withdrawMember(member);
        
        if(updateCount > 0) {
        	session.invalidate();
        	return "true";
        }else {
        	return "fail";
        }
	}

}
