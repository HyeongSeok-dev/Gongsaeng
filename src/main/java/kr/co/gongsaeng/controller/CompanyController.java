package kr.co.gongsaeng.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import kr.co.gongsaeng.vo.ClassVO;

@Controller
public class CompanyController {

	// 클래스 등록
	@GetMapping("classRegisterForm")
	public String classRegisterForm(HttpSession session, Model model) {
		// 세션 아이디 없을 경우 "로그인이 필요합니다" 처리를 위해 "forward.jsp" 페이지 포워딩
		if(session.getAttribute("sId") == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			// targetURL 속성명으로 로그인 폼 페이지 서블릿 주소 저장
			model.addAttribute("targetURL", "MemberLoginForm");
			return "forward";
		}
		
		return "company/company_register1";
	}

	
	@PostMapping("ClassRegisterPro")
	public String classRegisterPro(HttpSession session, Model model, HttpServletRequest request, ClassVO gclass) {
		if(session.getAttribute("sId") == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "MemberLoginForm");
			return "forward";
		}
		
		// 대표 사진 업로드(최대 3장)
		
		// 실제 파일 업로드를 수행하기 위해 프로젝트 상의 가상 업로드 디렉토리(upload) 생성 필요
		String uploadDir = "/resources/upload";
		// 가상 디렉토리에 대한 실제 경로 알아내기
		String saveDir = session.getServletContext().getRealPath(uploadDir);
		// => 날짜별로 파일들을 분류하면 관리가 매우 편함
		String subDir = "";
		
		// 1-2) java.time.LocalXXX 클래스 활용
		// => 날짜 정보만 관리할 경우 LocalDate, 시각 정보 LocalTime, 날짜 및 시각 정보 LocalDateTime 사용
		LocalDate now = LocalDate.now();
		
		// LocalXXX 타입 객체의 날짜 포맷을 변경하려면 java.time.format.DateTimeFormatter 클래스 활용
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
		
		// 3. 지정한 포맷을 적용하여 날짜 형식 변경한 결과를 변수(subDir)에 저장
		subDir = now.format(dtf);
		
		// 4. 기존 업로드 경로(실제 경로)에 서브디렉토리(날짜 경로) 결합
		saveDir += File.separator + subDir; // File.separator 대신 / 또는 \ 지정도 가능
		
		try {
			// 5. 해당 디렉토리 존재하지 않을 경우 자동 생성
			// 5-1) Paths.get() 메서드 호출하여 업로드 경로에 해당하는 Path 객체 리턴받기
			Path path = Paths.get(saveDir); // 파라미터로 업로드 경로 전달
			
			// 5-2) Files.createDirectories() 메서드 호출하여 실제 경로 생성
			// => 이 때, 중간 경로 중 존재하지 않는 경로들을 모두 생성
			Files.createDirectories(path); // 파라미터로 Path 객체 전달
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		// -------------------
		// BoardVO 객체에 전달(저장)된 실제 파일 정보가 관리되는 MultipartFile 타입 객체 꺼내기
		MultipartFile mFile1 = gclass.getFile1();
		MultipartFile mFile2 = gclass.getFile2();
		MultipartFile mFile3 = gclass.getFile3();
		// MultipartFile 객체의 getOriginalFilename() 메서드 호출 시 업로드 된 파일명 리턴
		System.out.println("원본파일명1 : " + mFile1.getOriginalFilename());
		System.out.println("원본파일명2 : " + mFile2.getOriginalFilename());
		System.out.println("원본파일명3 : " + mFile3.getOriginalFilename());
		
		// --------------------------
		// [ 파일명 중복방지 대책 ]
		gclass.setClass_pic1("");
		gclass.setClass_pic2("");
		gclass.setClass_pic3("");
		
		String fileName1 = UUID.randomUUID().toString().substring(0, 8) + "_" + mFile1.getOriginalFilename();
		String fileName2 = UUID.randomUUID().toString().substring(0, 8) + "_" + mFile2.getOriginalFilename();
		String fileName3 = UUID.randomUUID().toString().substring(0, 8) + "_" + mFile3.getOriginalFilename();
		
		// 파일이 존재할 경우 BoardVO 객체에 서브디렉토리명(subDir)과 함께 파일명 저장
		// ex) 2023/12/19/ef3e51e8_1.jpg
		if(!mFile1.getOriginalFilename().equals("")) {
			gclass.setClass_pic1(subDir + "/" + fileName1);
		}
		
		if(!mFile2.getOriginalFilename().equals("")) {
			gclass.setClass_pic1(subDir + "/" + fileName2);
		}
		
		if(!mFile3.getOriginalFilename().equals("")) {
			gclass.setClass_pic1(subDir + "/" + fileName3);
		}
		
		System.out.println("실제 업로드 파일명1 : " + gclass.getClass_pic1());
		System.out.println("실제 업로드 파일명2 : " + gclass.getClass_pic2());
		System.out.println("실제 업로드 파일명3 : " + gclass.getClass_pic3());
		
		
		
		
		
		
		
		
		return null;	
	}
	
	
	
	
	
	
	@GetMapping("company/banjang/register")
	public String company_banjang_register() {
		return "company/company_banjang_register";
	}

	@GetMapping("company/main")
	public String company_main() {
		return "company/company_main";
	}
		

	@GetMapping("company/class/register1")
	public String company_register1() {
		return "company/company_register1";
	}

	@GetMapping("company/class/register2")
	public String company_register2() {
		return "company/company_register2-2";
	}

	@GetMapping("company/class/register3")
	public String company_register3() {
		return "company/company_register3";
	}

	@GetMapping("company/class/register4")
	public String company_register4() {
		return "company/company_register4";
	}
	
	@GetMapping("company/class")
	public String company_class() {
		return "company/company_class";
	}

//	@GetMapping("company/reservation")
//	public String company_reservation() {
//		return "company/company_reservation";
//	}

	@GetMapping("company/reservation")
	public String company_reservation2() {
		return "company/company_reservation2";
	}
		
	@GetMapping("company/sales")
	public String company_sales() {
		return "company/company_sales";
	}
	
	@GetMapping("company/sales2")
	public String company_sales2() {
		return "company/company_sales2";
	}

	@GetMapping("company/income")
	public String company_income() {
		return "company/company_income";
	}
	
	@GetMapping("company/income/list")
	public String company_income_list() {
		return "company/company_income_list";
	}

	@GetMapping("company/member")
	public String company_member() {
		return "company/company_member";
	}
	
	@GetMapping("company/review")
	public String company_review() {
		return "company/company_review";
	}
	
	@GetMapping("company/chat")
	public String company_chat() {
		return "company/company_chat";
	}
	
	@GetMapping("company/community")
	public String company_community() {
		return "company/company_community";
	}
	
	@GetMapping("company/notification")
	public String company_notification() {
		return "company/company_notification";
	}
	
	@GetMapping("company/inquiry")
	public String company_inquiry() {
		return "company/company_inquiry";
	}
	
	@GetMapping("company/coupon")
	public String company_coupon() {
		return "company/company_coupon";
	}
	
	@GetMapping("company/coupon2")
	public String company_coupon2() {
		return "company/company_coupon2";
	}
	
	@GetMapping("company/profile")
	public String company_profile() {
		return "company/company_profile";
	}
	
	@GetMapping("company/profile2")
	public String company_profile2() {
		return "company/company_profile2";
	}
	
	@GetMapping("company/profile3")
	public String company_profile3() {
		return "company/company_profile3";
	}
	
	@GetMapping("company/example")
	public String company_example() {
		return "company/example_photo";
	}
	
	@GetMapping("company/calendar")
	public String company_calendar() {
		return "company/example_calendar";
	}


	
	
}
