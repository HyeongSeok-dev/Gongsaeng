package kr.co.gongsaeng.controller;

import java.beans.PropertyEditor;
import java.beans.PropertyEditorSupport;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Time;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.google.protobuf.TextFormat.ParseException;

import kr.co.gongsaeng.service.ClassService;
import kr.co.gongsaeng.service.CompanyService;
import kr.co.gongsaeng.vo.ClassVO;
import kr.co.gongsaeng.vo.CompanyVO;
import kr.co.gongsaeng.vo.MemberVO;

@Controller
public class CompanyController {
	
	@Autowired
	private CompanyService companyService;
	
	@Autowired
	private ClassService classService;
	

	// 클래스 등록
	@GetMapping("classRegisterForm")
	public String classRegisterForm(HttpSession session, Model model) {
		// 세션 아이디 없을 경우 "로그인이 필요합니다" 처리를 위해 "forward.jsp" 페이지 포워딩
//		if(session.getAttribute("sId") == null) {
//			model.addAttribute("msg", "로그인이 필요합니다");
//			// targetURL 속성명으로 로그인 폼 페이지 서블릿 주소 저장
//			model.addAttribute("targetURL", "MemberLoginForm");
//			return "forward";
//		}
		
		return "company/company_register1";
	}
	
	// 1페이지
	@GetMapping("company/class/register1")
	public String company_register1() {
		return "company/company_register1";
	}

	// 2페이지
	@GetMapping("company/class/register2")
	public String company_register2() {
		return "company/company_register2-2";
	}

	// 3페이지
	@GetMapping("company/class/register3")
	public String company_register3() {
		return "company/company_register3";
	}

	// 4페이지
	@GetMapping("company/class/register4")
	public String company_register4() {
		return "company/company_register4";
	}
	
	// 5페이지
	@GetMapping("company/class/register5")
	public String company_register5() {
		return "company/company_register5";
	}

	// 6페이지
	@GetMapping("company/class/register6")
	public String company_register6() {
		return "company/company_register6";
	}
	
	// 7페이지
	@GetMapping("company/class/register7")
	public String company_register7() {
		return "company/company_register7";
	}
	
	// 8페이지
	@GetMapping("company/class/register8")
	public String company_register8() {
		return "company/company_register8";
	}
	
	@PostMapping("company/class/classRegisterPro")
	public String classRegisterPro(HttpSession session, Model model, HttpServletRequest request, ClassVO gclass) {
//		if(session.getAttribute("sId") == null) {
//			model.addAttribute("msg", "로그인이 필요합니다");
//			model.addAttribute("targetURL", "MemberLoginForm");
//			return "forward";
//		}
		
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
		
		// ========================================================================================================================
		// BoardVO 객체에 전달(저장)된 실제 파일 정보가 관리되는 MultipartFile 타입 객체 꺼내기
		MultipartFile mFile1 = gclass.getFile1();
		MultipartFile mFile2 = gclass.getFile2();
		MultipartFile mFile3 = gclass.getFile3();
		MultipartFile mFile4 = gclass.getFile4();
		MultipartFile mFile5 = gclass.getFile5();
		MultipartFile mFile6 = gclass.getFile6();
		// MultipartFile 객체의 getOriginalFilename() 메서드 호출 시 업로드 된 파일명 리턴
		System.out.println("원본파일명1 : " + mFile1.getOriginalFilename());
		System.out.println("원본파일명2 : " + mFile2.getOriginalFilename());
		System.out.println("원본파일명3 : " + mFile3.getOriginalFilename());
		System.out.println("원본파일명4 : " + mFile4.getOriginalFilename());
		System.out.println("원본파일명5 : " + mFile5.getOriginalFilename());
		System.out.println("원본파일명6 : " + mFile6.getOriginalFilename());
		// --------------------------
		// [ 파일명 중복방지 대책 ]
		gclass.setClass_pic1("");
		gclass.setClass_pic2("");
		gclass.setClass_pic3("");
		gclass.setClass_curriculum1("");
		gclass.setClass_curriculum2("");
		gclass.setClass_curriculum3("");
		
		
		
		String fileName1 = UUID.randomUUID().toString().substring(0, 8) + "_" + mFile1.getOriginalFilename();
		String fileName2 = UUID.randomUUID().toString().substring(0, 8) + "_" + mFile2.getOriginalFilename();
		String fileName3 = UUID.randomUUID().toString().substring(0, 8) + "_" + mFile3.getOriginalFilename();
		String fileName4 = UUID.randomUUID().toString().substring(0, 8) + "_" + mFile4.getOriginalFilename();
		String fileName5 = UUID.randomUUID().toString().substring(0, 8) + "_" + mFile5.getOriginalFilename();
		String fileName6 = UUID.randomUUID().toString().substring(0, 8) + "_" + mFile6.getOriginalFilename();
		
		
		
		// 파일이 존재할 경우 BoardVO 객체에 서브디렉토리명(subDir)과 함께 파일명 저장
		// ex) 2023/12/19/ef3e51e8_1.jpg
		if(!mFile1.getOriginalFilename().equals("")) {
			gclass.setClass_pic1(subDir + "/" + fileName1);
		}
		
		if(!mFile2.getOriginalFilename().equals("")) {
			gclass.setClass_pic2(subDir + "/" + fileName2);
		}
		
		if(!mFile3.getOriginalFilename().equals("")) {
			gclass.setClass_pic3(subDir + "/" + fileName3);
		}
		if(!mFile4.getOriginalFilename().equals("")) {
			gclass.setClass_curriculum1(subDir + "/" + fileName4);
		}
		
		if(!mFile5.getOriginalFilename().equals("")) {
			gclass.setClass_curriculum2(subDir + "/" + fileName5);
		}
		
		if(!mFile6.getOriginalFilename().equals("")) {
			gclass.setClass_curriculum3(subDir + "/" + fileName6);
		}

		// 파일이 존재할 경우 BoardVO 객체에 서브디렉토리명(subDir)과 함께 파일명 저장
		// ex) 2023/12/19/ef3e51e8_1.jpg
		
		System.out.println("실제 업로드 파일명1 : " + gclass.getClass_pic1());
		System.out.println("실제 업로드 파일명2 : " + gclass.getClass_pic2());
		System.out.println("실제 업로드 파일명3 : " + gclass.getClass_pic3());
		System.out.println("실제 업로드 파일명4 : " + gclass.getClass_curriculum1());
		System.out.println("실제 업로드 파일명5 : " + gclass.getClass_curriculum2());
		System.out.println("실제 업로드 파일명6 : " + gclass.getClass_curriculum3());
		
				
		//------------------------------------------------------------------------------------------------------
		//검색태그 공백제거하기
		gclass.setClass_tag(gclass.getClass_tag().trim());
		System.out.println(gclass.getClass_tag());
		//----------------------------------------------------------------------------------------------------
		// Model 객체에 BoardVO 객체 저장
		model.addAttribute("gclass", gclass);
		//----------------------------------------------------------------------------------------------------
		
		// classService - registClass() 메서드 호출하여 클래스 등록 작업 요청
		// => 파라미터 : ClassVO 객체   리턴타입 : int(insertCount)
		int insertCount = classService.registClass(gclass);
		
		// 게시물 등록 작업 요청 결과 판별
		if(insertCount > 0) {
			try {
				// 업로드 된 파일들은 MultipartFile 객체에 의해 임시 디렉토리에 저장되며
				// 글쓰기 작업 성공 시 임시 디렉토리 -> 실제 디렉토리 이동 작업 필요
				// => MultipartFile 객체의 transferTo() 메서드를 호출하여 실제 위치로 이동(= 업로드)
				// => 파일이 선택되지 않은 경우(파일명이 널스트링) 이동이 불가능(예외 발생)하므로 제외
				// => transferTo() 메서드 파라미터로 java.io.File 타입 객체 전달
				if(!mFile1.getOriginalFilename().equals("")) {
					mFile1.transferTo(new File(saveDir, fileName1));
				}
				
				if(!mFile2.getOriginalFilename().equals("")) {
					mFile2.transferTo(new File(saveDir, fileName2));
				}
				
				if(!mFile3.getOriginalFilename().equals("")) {
					mFile3.transferTo(new File(saveDir, fileName3));
				}
				
				if(!mFile4.getOriginalFilename().equals("")) {
					mFile4.transferTo(new File(saveDir, fileName4));
				}
				
				if(!mFile5.getOriginalFilename().equals("")) {
					mFile5.transferTo(new File(saveDir, fileName5));
				}
				
				if(!mFile6.getOriginalFilename().equals("")) {
					mFile6.transferTo(new File(saveDir, fileName6));
				}
				
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			// 글목록(BoardList) 서블릿 리다이렉트
			return "redirect:/company/class";
			
		} else {
			// "글쓰기 실패!" 메세지 처리(fail_back)
			model.addAttribute("msg", "글쓰기 실패!");
			return "fail_back";
		}

	}
	
	// ================================================================
	// @InitBinder를 사용하여 커스텀 에디터를 등록하는 메소드 추가
	@InitBinder
	public void initBinder(WebDataBinder binder) {
	    // String 타입의 시간 데이터를 java.sql.Time 타입으로 변환하는 커스텀 에디터
	    binder.registerCustomEditor(Time.class, (PropertyEditor) new PropertyEditorSupport() {
	        @Override
	        public void setAsText(String text) throws IllegalArgumentException {
	            try {
	                // "HH:mm" 형식의 문자열을 java.sql.Time 객체로 변환
	                SimpleDateFormat format = new SimpleDateFormat("HH:mm");
	                Time time = new Time(format.parse(text).getTime());
	                setValue(time);
	            } catch (java.text.ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	        }

	        @Override
	        public String getAsText() {
	            // Time 객체를 "HH:mm" 형식의 문자열로 변환
	            Time value = (Time) getValue();
	            return (value != null ? new SimpleDateFormat("HH:mm").format(value) : "");
	        }
	    });
	}
	

	// ================================================================
	// [ 반장회원 전환 신청 ] -> 일반 회원의 기존 정보 가져오기
	@GetMapping("company/banjang/register")
	public String company_banjang_register(HttpSession session, Model model) {
	    String sId = (String) session.getAttribute("sId");
	    if (sId == null) {
	        model.addAttribute("msg", "잘못된 접근입니다");
	        return "fail_back";
	    }

	    // MemberVO 객체 생성 및 member_id 설정
	    MemberVO member = new MemberVO();
	    member.setMember_id(sId); // 세션에서 가져온 sId를 member_id로 설정

	    MemberVO dbMember = companyService.getMember(member);
	    model.addAttribute("member", dbMember);

	    return "company/company_banjang_register";
	}

	
	// [ 반장회원 전환 신청 ] -> 사업체 회원으로 정보 INSERT(company)
	@PostMapping("company/banjang/companyJoinPro")
	public String companyJoin(HttpSession session, Model model, CompanyVO company) {
		
	    String memberId = (String) session.getAttribute("sId"); // 세션에서 member_id 가져오기
	    if (memberId == null) {
	        model.addAttribute("msg", "로그인이 필요합니다.");
	        return "redirect:/login"; // 로그인 페이지나 홈으로 리다이렉트
	    }

	    company.setMember_id(memberId); // CompanyVO에 member_id 설정

		// 대표 사진 등록
		String uploadDir = "/resources/upload"; // 가상의 경로(이클립스 프로젝트 상에 생성한 경로)
		String saveDir = session.getServletContext().getRealPath(uploadDir); // 또는 
		String subDir = "";
		LocalDate now = LocalDate.now();
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
		subDir = now.format(dtf);
		saveDir += File.separator + subDir; 
		try {
			Path path = Paths.get(saveDir); 
			Files.createDirectories(path); 
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		MultipartFile mFile1 = company.getFile1();
		System.out.println("원본파일명1 : " + mFile1.getOriginalFilename());
		
		// --------------------------
		company.setCom_img("");
		String fileName1 = UUID.randomUUID().toString().substring(0, 8) + "_" + mFile1.getOriginalFilename();

		if(!mFile1.getOriginalFilename().equals("")) {
			company.setCom_img(subDir + "/" + fileName1);
		} else {
			System.out.println("파일이 전송되지 않았습니다!");
		}
		
		System.out.println("실제 업로드 파일명1 : " + company.getCom_img());
		// --------------------------
		int insertCount = companyService.registCompany(company);
		
		if(insertCount > 0) {
			try {
				// 업로드 된 파일들은 MultipartFile 객체에 의해 임시 디렉토리에 저장되며
				// 글쓰기 작업 성공 시 임시 디렉토리 -> 실제 디렉토리 이동 작업 필요
				// => MultipartFile 객체의 transferTo() 메서드를 호출하여 실제 위치로 이동(= 업로드)
				// => 파일이 선택되지 않은 경우(파일명이 널스트링) 이동이 불가능(예외 발생)하므로 제외
				// => transferTo() 메서드 파라미터로 java.io.File 타입 객체 전달
				if(!mFile1.getOriginalFilename().equals("")) {
					mFile1.transferTo(new File(saveDir, fileName1));
				}
			
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}	
			// 글목록(BoardList) 서블릿 리다이렉트
						return "redirect:/BoardList";
					} else {
						// "글쓰기 실패!" 메세지 처리(fail_back)
						model.addAttribute("msg", "글쓰기 실패!");
						return "fail_back";
					}
					
				}
	
	

	// =============================================================
	// 클래스 내역
	@GetMapping("company/class") 
	public String classList(HttpSession session, Model model, ClassVO gclass, HttpServletRequest request) {
	    String sId = (String)session.getAttribute("sId");
	    
	    System.out.println("Current sId from session: >>>>>>>>>>>>> " + sId);
	    
	       gclass.setMember_id(sId);
		   model.addAttribute("gclass",gclass);
		    
		   List<Map<String, Object>> classList = classService.getClassList(sId);
		   
		   model.addAttribute("classList", classList); // 클래스 목록을 모델에 추가

		    
		    return "company/company_class";
		}
		
	
	@GetMapping("company/main")
	public String company_main() {
		return "company/company_main";
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

	@GetMapping("company/dbr")
	public String company_dbr() {
		return "company/dbregister";
	}


	
	
}
