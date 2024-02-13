package kr.co.gongsaeng.controller;

import java.time.format.DateTimeFormatter;
import java.beans.PropertyEditor;
import java.beans.PropertyEditorSupport;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Time;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.time.LocalDateTime;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.google.protobuf.TextFormat.ParseException;

import kr.co.gongsaeng.service.ClassService;
import kr.co.gongsaeng.service.CompanyService;
import kr.co.gongsaeng.vo.BoardVO;
import kr.co.gongsaeng.vo.ClassVO;
import kr.co.gongsaeng.vo.CompanyClassVO;
import kr.co.gongsaeng.vo.CompanyGenderRatioVO;
import kr.co.gongsaeng.vo.CompanyReviewDetailVO;
import kr.co.gongsaeng.vo.CompanyVO;
import kr.co.gongsaeng.vo.CouponVO;
import kr.co.gongsaeng.vo.MemberVO;
import kr.co.gongsaeng.vo.PageInfo;
import kr.co.gongsaeng.vo.PaymentVO;
import kr.co.gongsaeng.vo.ReportVO;
import kr.co.gongsaeng.vo.ViewReportDetailByCompanyVO;

@Controller
public class CompanyController {
	
	@Autowired
	private CompanyService companyService;
	
	@Autowired
	private ClassService classService;

	// [ 사업체 메인 페이지 ] 
	@GetMapping("company/main")
	public String company_main(Model model, HttpSession session, PaymentVO payment, ReportVO report) {
	
		
		// 사업체 com_idx 산출
		String sId = (String)session.getAttribute("sId");
		System.out.println("Current sId from session: >>>>>>>>>>>>> " + sId);
			
		
		Integer comIdx = companyService.findComIdxBysId(sId);
		System.out.println("Current comIdx from session: >>>>>>>>>>>>> " + comIdx);
		
		// (1-1) 월간 매출 - 클래스 판매 금액
		Integer monthlySales = companyService.calculateMonthlyBycomIdx(comIdx);
		
		if (monthlySales == null) {
		    monthlySales = 0; // 기본값 할당
		}
		
		model.addAttribute("monthlySales", monthlySales); 
	    
	    // (1-2) 월간 매출 - 클래스 할인 쿠폰 사용 금액
		int monthlyCoupons = companyService.calculateMonthlyCouponsBycomIdx(comIdx);
		
		model.addAttribute("monthlyCoupons", monthlyCoupons); 
		
		// (2-1) 클래스 누적 정산금액(클래스 총 정산금액)
		Integer totalSales = companyService.calculateTotalSales(comIdx);
		
		model.addAttribute("totalSales",totalSales);
	    
		// (2-2) 클래스 누적 정산금액(클래스 총 정산금액)
		int totalRefund = companyService.calculateTotalRefund(comIdx);
		model.addAttribute("totalRefund",totalRefund);
		
		// (3-1) 월간 클래스 등록 현황
		int monthlyNumberOfClassSales = companyService.calculateMonthlyNumberOfClass(comIdx);
		model.addAttribute("monthlyNumberOfClassSales",monthlyNumberOfClassSales);
		
		// (4-1) 월간 클래스 취소 현황(취소 건수)
		int montlyCancelClass = companyService.calculateMonthlyCancelClass(comIdx);
		model.addAttribute("montlyCancelClass",montlyCancelClass);
		
		// (4-2) 월간 클래스 취소 현황(취소 금액)
		int montlyCancelClassAmount = companyService.calculateMonthlyCancelAmount(comIdx);
		model.addAttribute("montlyCancelClassAmount",montlyCancelClassAmount);
		
		String memberId = (String) session.getAttribute("sId");
		
		// (5) 운영중인 클래스 현황
		int numberOfClass = companyService.calculateNumberOfClass(memberId);
		model.addAttribute("numberOfClass",numberOfClass);
		
		// (6) 클래스 신고 현황
		List<ReportVO> reportCount = companyService.getReportCount(memberId);
	    reportCount = reportCount == null ? Collections.emptyList() : reportCount; // `null` 체크
		model.addAttribute("reportCount",reportCount);
		
		// (7) 공지사항 출력
		List<BoardVO> companyBoard = companyService.getCompanyBoard(1,2);
	    companyBoard = companyBoard == null ? Collections.emptyList() : companyBoard; // `null` 체크
		model.addAttribute("companyBoard",companyBoard);

		// (8) 현재 날짜 출력
		
	    // Get current date
        Date date = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd", Locale.ENGLISH);
        String currentDate = dateFormat.format(date);

        // Get day of the week
        SimpleDateFormat dayFormat = new SimpleDateFormat("EEEE", Locale.KOREAN);
        String dayOfWeek = dayFormat.format(date);

        // Add to the model
        model.addAttribute("currentDate", currentDate);
        model.addAttribute("dayOfWeek", dayOfWeek);

		
		return "company/company_main";
	}
	
	
	// ==============================================================================================
	// [ 클래스 등록 ] 
	@GetMapping("company/classRegisterForm")
	public String classRegisterForm(HttpSession session, Model model, CompanyVO company) {
		// 세션 아이디 없을 경우 "로그인이 필요합니다" 처리를 위해 "forward.jsp" 페이지 포워딩
//		if(session.getAttribute("sId") == null) {
//			model.addAttribute("msg", "로그인이 필요합니다");
//			// targetURL 속성명으로 로그인 폼 페이지 서블릿 주소 저장
//			model.addAttribute("targetURL", "MemberLoginForm");
//			return "forward";
//		}
		
	    String sId = (String)session.getAttribute("sId");
//		CompanyVO company = classService.getClassAddress(sId);
	    System.out.println("클래스 등록 sId >>>>>>>>" + sId);
	    CompanyVO companyAddress = classService.getClassAddress(sId);
		model.addAttribute("companyAddress",companyAddress);
		System.out.println("클래스 등록 companyAddress >>>>>>>>" + companyAddress);
		
		
		return "company/company_register7";
	}
	
	@PostMapping("company/classRegisterPro")
	public String classRegisterPro(HttpSession session, Model model, HttpServletRequest request, ClassVO gclass, @RequestParam("class_offering") int[] classOfferings,
	@RequestParam("class_day") String[] classDay) {//		if(session.getAttribute("sId") == null) {
//			model.addAttribute("msg", "로그인이 필요합니다");
//			model.addAttribute("targetURL", "MemberLoginForm");
//			return "forward";
//		}
	    String memberId = (String) session.getAttribute("sId");
	    gclass.setMember_id(memberId);

	    
	    String class_post_code = request.getParameter("class_post_code").replace(",", "");
	    String class_address1 = request.getParameter("class_address1").replace(",", "");
	    String class_address2 = request.getParameter("class_address2").replace(",", "");

	    gclass.setClass_post_code(class_post_code);
	    gclass.setClass_address1(class_address1);
	    gclass.setClass_address2(class_address2);


	    // ------------------------------------------------------
	    // 기타 제공 사항
	    if (classOfferings != null) {
	    	
		    char[] stringArray = new char[7];
	        for (int i = 0; i < stringArray.length; i++) {
	            stringArray[i] = '0';
	        }
	        for (int elem : classOfferings) {
	        	if (elem > 0 && elem <= stringArray.length) {
	                stringArray[elem] = '1'; // 배열 인덱스 조정
	            }
	        }
	        String result = new String(stringArray);
	        
	        System.out.println(result);
	        gclass.setClass_offering(result);
	    	
	    }
	    
	    // ------------------------------------------------------
	    // 요일
	    if (classDay != null) {
	    	
	    	char[] stringArray = new char[7];
	    	for (int i = 0; i < stringArray.length; i++) {
	    		stringArray[i] = '0';
	    	}
	    	for (int i = 0; i < stringArray.length; i++) {
	    		if (classDay[i].equals("on")) {
	    			stringArray[i] = '1'; // 배열 인덱스 조정
	    		}
	    	}
	    	String result = new String(stringArray);
	    	
	    	System.out.println(result);
	    	gclass.setClass_day(result);
	    	
	    }
	    // ------------------------------------------------------
	    
	    // 주소 선택
	    // ------------------------------------------------------
		String addressOption = request.getParameter("addressOption");
		String postCode, address1, address2;

		if ("existing".equals(addressOption)) {
			postCode = request.getParameter("class_post_code").replace(",", ""); 
			address1 = request.getParameter("class_address1").replace(",", ""); 
			address2 = request.getParameter("class_address2").replace(",", ""); 
		} else if ("new".equals(addressOption)) {
			postCode = request.getParameter("class_post_code").replace(",", ""); 
			address1 = request.getParameter("class_address1").replace(",", "");
			address2 = request.getParameter("class_address2").replace(",", ""); 
		}
		
		// ------------------------------------------------------
		
		
		
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
		// [ 클래스 수정 ]
		// "ClassModifyForm" 서블릿 요청에 대한 글 수정 폼 포워딩 처리
		@GetMapping("company/classModifyForm")
		public String boardModifyForm(@RequestParam("class_idx") int classIdx, HttpSession session, Model model) {
		
	        // 클래스 상세정보 조회
	        Map<String, Object> classDetail = classService.getClassDetail(classIdx);
	        if (classDetail != null) {
	            String classDays = (String) classDetail.get("class_day"); // 가정: classDays 정보가 Map에 포함되어 있음
	            // 요일을 나타내는 배열
	            String[] daysOfWeek = {"월", "화", "수", "목", "금", "토", "일"};
	            StringBuilder selectedDays = new StringBuilder();

	            for (int i = 0; i < classDays.length(); i++) {
	                if (classDays.charAt(i) == '1') {
	                    // 선택된 요일을 StringBuilder에 추가
	                    if (selectedDays.length() > 0) {
	                        selectedDays.append(", ");
	                    }
	                    selectedDays.append(daysOfWeek[i]);
	                }
	            }
	            
	            
	    	    // ------------------------------------------------------
	    	    // 기타 제공 사항
//	    	    if (classOfferings != null) {
//	    	    	
//	    		    char[] stringArray = new char[7];
//	    	        for (int i = 0; i < stringArray.length; i++) {
//	    	            stringArray[i] = '0';
//	    	        }
//	    	        for (int elem : classOfferings) {
//	    	        	if (elem > 0 && elem <= stringArray.length) {
//	    	                stringArray[elem] = '1'; // 배열 인덱스 조정
//	    	            }
//	    	        }
//	    	        String result = new String(stringArray);
//	    	        
//	    	        System.out.println(result);
//	    	        gclass.setClass_offering(result);
//	    	    	
//	    	    }
	    	    
	    	    // ------------------------------------------------------
	    	    // 요일
//	    	    if (classDay != null) {
//	    	    	
//	    	    	char[] stringArray = new char[7];
//	    	    	for (int i = 0; i < stringArray.length; i++) {
//	    	    		stringArray[i] = '0';
//	    	    	}
//	    	    	for (int i = 0; i < stringArray.length; i++) {
//	    	    		if (classDay[i].equals("on")) {
//	    	    			stringArray[i] = '1'; // 배열 인덱스 조정
//	    	    		}
//	    	    	}
//	    	    	String result = new String(stringArray);
//	    	    	
//	    	    	System.out.println(result);
//	    	    	gclass.setClass_day(result);
//	    	    	
//	    	    }
	    	    // ------------------------------------------------------

	            // 선택된 요일 문자열을 모델에 추가
	            model.addAttribute("selectedDays", selectedDays.toString());
	            model.addAttribute("classDetail", classDetail);

	            System.out.println("클래스 상세정보 >>>>>>>>>" + classDetail);
	            // 회원정보 수정 페이지로 이동
	            return "company/company_class_modify";
	        } else {
	            return "redirect:/company/class";
	        }
	    }
	
		// ----------------------------------------------------------------
		// 파일 삭제 AJAX 요청에 대한 응답 데이터 생성 및 전송을 위해 @ResponseBody 지정
			@ResponseBody
			@PostMapping("ClassDeleteFile")
			public String deleteFile(ClassVO gclass, HttpSession session) {
//				System.out.println(board.getBoard_num() + ", " + board.getBoard_file1());
				
				// BoardService - removeBoardFile() 메서드 호출하여 지정된 파일명 삭제 요청
				// => 파라미터 : BoardVO 객체   리턴타입 : int(removeCount)
				int removeCount = classService.removeClassFile(gclass);
//				System.out.println(removeCount);
				
				try {
					if(removeCount > 0) { // 레코드의 파일명 삭제(수정) 성공 시
						// 서버에 업로드 된 실제 파일 삭제
						String uploadDir = "/resources/upload"; // 가상의 경로(이클립스 프로젝트 상에 생성한 경로)
						String saveDir = session.getServletContext().getRealPath(uploadDir);
						
						// 파일명이 널스트링이 아닐 경우에만 삭제 작업 수행
						if(!gclass.getClass_pic1().equals("")) {
							Path path = Paths.get(saveDir + "/" + gclass.getClass_pic1());
							Files.deleteIfExists(path);
							
							// 예외가 발생하지 않을 경우 정상적으로 파일 삭제가 완료되었으므로 "true" 리턴
							return "true";
						}
				
						if(!gclass.getClass_pic2().equals("")) {
							Path path = Paths.get(saveDir + "/" + gclass.getClass_pic2());
							Files.deleteIfExists(path);
							
							// 예외가 발생하지 않을 경우 정상적으로 파일 삭제가 완료되었으므로 "true" 리턴
							return "true";
						}
						
						if(!gclass.getClass_pic3().equals("")) {
							Path path = Paths.get(saveDir + "/" + gclass.getClass_pic3());
							Files.deleteIfExists(path);
							
							// 예외가 발생하지 않을 경우 정상적으로 파일 삭제가 완료되었으므로 "true" 리턴
							return "true";
						}
						
						if(!gclass.getClass_curriculum1().equals("")) {
							Path path = Paths.get(saveDir + "/" + gclass.getClass_curriculum1());
							Files.deleteIfExists(path);
							
							// 예외가 발생하지 않을 경우 정상적으로 파일 삭제가 완료되었으므로 "true" 리턴
							return "true";
						}
						
						if(!gclass.getClass_curriculum2().equals("")) {
							Path path = Paths.get(saveDir + "/" + gclass.getClass_curriculum2());
							Files.deleteIfExists(path);
							
							// 예외가 발생하지 않을 경우 정상적으로 파일 삭제가 완료되었으므로 "true" 리턴
							return "true";
						}
						
						if(!gclass.getClass_curriculum3().equals("")) {
							Path path = Paths.get(saveDir + "/" + gclass.getClass_curriculum3());
							Files.deleteIfExists(path);
							
							// 예외가 발생하지 않을 경우 정상적으로 파일 삭제가 완료되었으므로 "true" 리턴
							return "true";
						}
					
					}
					
				} catch (IOException e) {
					e.printStackTrace();
				}
				
				// DB 파일명 삭제 실패 또는 서버 업로드 파일 삭제 실패 등의 문제 발생 시 "false" 리턴
				return "false";
			}
		
		// ================================================================
		// [ 클래스 수정페이지 ]
			// "BoardModifyPro" 서블릿 요청에 대한 글 수정 요청 비즈니스 로직 처리
			@PostMapping("company/classModifyPro")
			public String modifyPro(ClassVO gclass, HttpSession session, Model model,@RequestParam("class_idx") int classIdx) {
				// 세션 아이디에 따른 차단 처리

				// -------------------------------------------------------------------
				// [ 수정 과정에서 파일 업로드 처리 ]
				String uploadDir = "/resources/upload"; // 가상의 경로(이클립스 프로젝트 상에 생성한 경로)
				String saveDir = session.getServletContext().getRealPath(uploadDir); // 또는 
				
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
				// -------------------
				System.out.println(gclass);
				
				// ClassVO 객체에 전달(저장)된 실제 파일 정보가 관리되는 MultipartFile 타입 객체 꺼내기
				// => 단, 수정하지 않은 파일(새로 업로드 항목으로 추가된 파일이 아닌 기존 파일)은
				//    input 태그를 적용받지 않으므로 파일이 전달되지 않음 => 따라서, null 값이 전달됨
				MultipartFile mFile1 = gclass.getFile1();
				MultipartFile mFile2 = gclass.getFile2();
				MultipartFile mFile3 = gclass.getFile3();
				MultipartFile mFile4 = gclass.getFile4();
				MultipartFile mFile5 = gclass.getFile5();
				MultipartFile mFile6 = gclass.getFile6();
				
				// board_fileX 멤버변수값을 모두 널스트링으로 설정
				gclass.setClass_pic1("");
				gclass.setClass_pic2("");
				gclass.setClass_pic3("");
				gclass.setClass_curriculum1("");
				gclass.setClass_curriculum2("");
				gclass.setClass_curriculum3("");
				
				
				// 파일이 존재할 경우 BoardVO 객체에 서브디렉토리명(subDir)과 함께 파일명 저장
				// ex) 2023/12/19/ef3e51e8_1.jpg
				String fileName1 = "";
				String fileName2 = "";
				String fileName3 = "";
				String fileName4 = "";
				String fileName5 = "";
				String fileName6 = "";
				
				if(mFile1 != null && !mFile1.getOriginalFilename().equals("")) {
					System.out.println("원본파일명1 : " + mFile1.getOriginalFilename());
					fileName1 = UUID.randomUUID().toString().substring(0, 8) + "_" + mFile1.getOriginalFilename();
					gclass.setClass_pic1(fileName1);
				}
				
				if(mFile2 != null && !mFile2.getOriginalFilename().equals("")) {
					System.out.println("원본파일명2 : " + mFile2.getOriginalFilename());
					fileName2 = UUID.randomUUID().toString().substring(0, 8) + "_" + mFile2.getOriginalFilename();
					gclass.setClass_pic2(fileName2);
				}
				
				if(mFile3 != null && !mFile3.getOriginalFilename().equals("")) {
					System.out.println("원본파일명3 : " + mFile3.getOriginalFilename());
					fileName3 = UUID.randomUUID().toString().substring(0, 8) + "_" + mFile3.getOriginalFilename();
					gclass.setClass_pic3(fileName3);
				}
				
				if(mFile4 != null && !mFile4.getOriginalFilename().equals("")) {
					System.out.println("원본파일명4 : " + mFile4.getOriginalFilename());
					fileName4 = UUID.randomUUID().toString().substring(0, 8) + "_" + mFile4.getOriginalFilename();
					gclass.setClass_curriculum1(fileName4);
				}
				
				if(mFile5 != null && !mFile5.getOriginalFilename().equals("")) {
					System.out.println("원본파일명5 : " + mFile5.getOriginalFilename());
					fileName5 = UUID.randomUUID().toString().substring(0, 8) + "_" + mFile5.getOriginalFilename();
					gclass.setClass_curriculum2(fileName5);
				}
				
				if(mFile6 != null && !mFile6.getOriginalFilename().equals("")) {
					System.out.println("원본파일명6 : " + mFile6.getOriginalFilename());
					fileName6 = UUID.randomUUID().toString().substring(0, 8) + "_" + mFile6.getOriginalFilename();
					gclass.setClass_curriculum1(fileName6);
				}
				
				System.out.println("실제 업로드 파일명1 : " + gclass.getClass_pic1());
				System.out.println("실제 업로드 파일명2 : " + gclass.getClass_pic2());
				System.out.println("실제 업로드 파일명3 : " + gclass.getClass_pic3());
				System.out.println("실제 업로드 파일명4 : " + gclass.getClass_curriculum1());
				System.out.println("실제 업로드 파일명5 : " + gclass.getClass_curriculum2());
				System.out.println("실제 업로드 파일명6 : " + gclass.getClass_curriculum3());
				// 현재 업로드 될 파일들은 서버 임시 디렉토리에 보관중이며 최종 이동 처리 수행 필요
				// ----------------------------------------------------------------------------------
				// BoardService - modifyBoard() 메서드 호출하여 글 수정 작업 요청
				// => 파라미터 : BoardVO 객체   리턴타입 : int(updateCount)
				int updateCount = classService.modifyClass(gclass);
				
				// DB 작업 요청 처리 결과 판별
				if(updateCount > 0) {
					try {
						// 파일명이 존재하는 파일만 이동 처리 작업 수행
						if(!gclass.getClass_pic1().equals("")) {
							mFile1.transferTo(new File(saveDir, fileName1));
						}
						
						if(!gclass.getClass_pic2().equals("")) {
							mFile1.transferTo(new File(saveDir, fileName2));
						}
						
						if(!gclass.getClass_pic3().equals("")) {
							mFile1.transferTo(new File(saveDir, fileName3));
						}
						
						if(!gclass.getClass_curriculum1().equals("")) {
							mFile1.transferTo(new File(saveDir, fileName4));
						}
						
						if(!gclass.getClass_curriculum2().equals("")) {
							mFile1.transferTo(new File(saveDir, fileName5));
						}
						
						if(!gclass.getClass_curriculum3().equals("")) {
							mFile1.transferTo(new File(saveDir, fileName6));
						}
						
						
					} catch (IllegalStateException e) {
						e.printStackTrace();
					} catch (IOException e) {
						e.printStackTrace();
					}
					
					// 글 상세정보 조회 페이지 리다이렉트(파라미터 : 글번호, 페이지번호)
					return "redirect:/company/class";
					
				} else {
					// "글 수정 실패!" 처리
					model.addAttribute("msg", "글 수정 실패!");
					return "fail_back";
				}
				
			}
		// ===========================================================
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
//	    return "redirect:/mypage/main";
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
						model.addAttribute("msg","반장 회원 신청이 완료되었습니다!");
						model.addAttribute("targetURL","/gongsaeng/mypage/main");
				        return "forward";
					} else {
						// "글쓰기 실패!" 메세지 처리(fail_back)
						model.addAttribute("msg", "글쓰기 실패!");
						return "fail_back";
					}
					
				}
	
	// =============================================================
	// 클래스 내역
	@GetMapping("company/class") 
//	public String classList(@RequestParam(defaultValue = "1") int pageNum, HttpSession session, Model model, ClassVO gclass, HttpServletRequest request) {
	public String classList(HttpSession session, Model model, ClassVO gclass, HttpServletRequest request) {
	    String sId = (String)session.getAttribute("sId");

//	    int listLimit = 7; // 한 페이지당 보여질 목록의 수
//	    int startRow = (pageNum - 1) * listLimit; // 시작 행 번호

//	    List<ClassVO> classList = classService.getTogetherList(sId, startRow, listLimit);
	    List<ClassVO> classList = classService.getTogetherList(sId);
	    model.addAttribute("classList", classList);

//	    int listCount = classService.getClassListCount(sId); // 전체 클래스 수
//	    int maxPage = (int)((double)listCount / listLimit + 0.95); // 전체 페이지 수
//	    int startPage = (((int)((double)pageNum / 10 + 0.9)) - 1) * 10 + 1; // 시작 페이지 번호
//	    int endPage = startPage + 10 - 1; // 마지막 페이지 번호
//
//	    if(endPage > maxPage) endPage = maxPage;
//
//	    PageInfo pageInfo = new PageInfo();
//	    pageInfo.setEndPage(endPage);
//	    pageInfo.setListCount(listCount);
//	    pageInfo.setMaxPage(maxPage);
//	    pageInfo.setPageNum(pageNum);
//	    pageInfo.setStartPage(startPage);
//	    model.addAttribute("pageInfo", pageInfo);

	    return "company/company_class";
	}
	

	
	// =============================================================		
	// [ 클래스 삭제 ]
	
	 @PostMapping("company/deleteClass")
	 public String deleteClass(@RequestParam("class_idx") String class_idx, Model model) {
	   
		 int deleteCount = classService.removeClass(class_idx);
		 if(deleteCount > 0) { // 삭제 성공
				model.addAttribute("msg", "해당 클래스가 삭제되었습니다.");
		 } else {
			 model.addAttribute("msg", "해당 클래스 삭제처리가 실패했습니다.");			 
		 }  

		 return "redirect:/company/class";
	 }
	
	
	
	// =============================================================		
	// 클래스 일정(캘린더 출력) -> 안됨 ㅡㅡ 
	@GetMapping("company/reservation")
	public String classReservation(HttpSession session, Model model, ClassVO gclass, HttpServletRequest request) {
		String sId = (String)session.getAttribute("sId");
		System.out.println("Current sId from session: >>>>>>>>>>>>> " + sId);
		
	    List<ClassVO> classList = classService.getClassSchedulesByMemberId(sId);
	    model.addAttribute("classList", classList);
		
		return "company/reservation2";
	}
	// =============================================================		
	// 매출 현황
	@GetMapping("company/sales")
	public String company_sales(HttpSession session, Model model, PaymentVO payment) {
		String sId = (String)session.getAttribute("sId");
		System.out.println("Current sId from session: >>>>>>>>>>>>> " + sId);
		
		Integer comIdx = companyService.findComIdxBysId(sId);
		System.out.println("Current comIdx from session: >>>>>>>>>>>>> " + comIdx);
		
	    // 날짜 포맷을 위한 DateTimeFormatter 인스턴스 생성
	    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		
		 // comIdx를 이용하여 매출 목록 조회
		 // class_idx를 이용하여 클래스명 출력
		List<Map<String, Object>> saleList = companyService.getSaleListByComIdx(comIdx);
	    for (Map<String, Object> sale : saleList) {
	        int classIdx = (Integer) sale.get("class_idx");
	        String class_title = companyService.findClassNameByClassIdx(classIdx);
	        sale.put("class_title", class_title); // saleList에 class_title 추가
	        
	     // pay_date 포매팅
	        LocalDateTime payDate = (LocalDateTime) sale.get("pay_date");
	        String formattedDate = payDate.format(formatter);
	        sale.put("formatted_pay_date", formattedDate); // 포매팅된 날짜를 새로운 키에 저장
	        
	    }
	    model.addAttribute("saleList", saleList);
	    
		return "company/company_sales";
	}
	
	// 매출 현황 삭제
	 @PostMapping("company/deleteSale")
	 public String deleteSale(@RequestParam("pay_num") String payNum, Model model) {
	   
		 int deleteCount = companyService.removeSaleList(payNum);
		 if(deleteCount > 0) { // 삭제 성공
				model.addAttribute("msg", "매출 정보가 삭제되었습니다.");
		 } else {
			 model.addAttribute("msg", "매출 정보 삭제처리가 실패했습니다.");			 
		 } 

		 return "redirect:/company/sales";
	 }
	 // =============================================================		
	 // 정산 신청 메인
	 @GetMapping("company/income")
	 public String company_income(HttpSession session, Model model, PaymentVO payment, CompanyVO company) {
		
		// 정산금액 산출(수수료 : 10%)
		String sId = (String)session.getAttribute("sId");
		System.out.println("Current sId from session: >>>>>>>>>>>>> " + sId);
			
		Integer comIdx = companyService.findComIdxBysId(sId);
		System.out.println("Current comIdx from session: >>>>>>>>>>>>> " + comIdx);
		 
		int income = companyService.calculateIncome(comIdx);
		model.addAttribute("income",income);
		
	    // 계좌정보 조회
	    List<CompanyVO> companyAccountInfo = companyService.getCompanyAccountInfo(comIdx);
	    model.addAttribute("companyAccountInfo", companyAccountInfo);
			 
	    // 정산신청 완료 금액 산출(pay_cal_status = 4)
	    int totalPayment = companyService.calculatePayment(comIdx);
	    model.addAttribute("totalPayment",totalPayment);

	    return "company/company_income";
		 
	 }
	 
	 // 정산 내역
	 @GetMapping("company/income/list")
	 public String company_income_list(HttpSession session, Model model, PaymentVO payment) {

		 String sId = (String)session.getAttribute("sId");
		 System.out.println("Current sId from session: >>>>>>>>>>>>> " + sId);
		 
		 Integer comIdx = companyService.findComIdxBysId(sId);
		 System.out.println("Current comIdx from session: >>>>>>>>>>>>> " + comIdx);

		 // payment 테이블 조회
		 List<PaymentVO> paymentInfo = companyService.getCompanyPaymentInfo(comIdx);
		 model.addAttribute("paymentInfo",paymentInfo);
		 
		 return "company/company_income_list";
	 }
	 
	// 정산 신청
	 @PostMapping("/company/income/updatePayCalStatusBatch")
	 @ResponseBody
	 public ResponseEntity<?> updatePayCalStatusBatch(@RequestParam("payNums") List<String> payNums, 
	                                                  @RequestParam("pay_cal_status") int payCalStatus) {
	     Map<String, Object> map = new HashMap<>();
	     try {
	         // 각 payNum에 대해 반복하여 상태 업데이트 처리
	         int updateCount = 0;
	         for (String payNum : payNums) {
	             updateCount += companyService.updatePayCalStatus(payNum, payCalStatus);
	         }
	         
	         if (updateCount == payNums.size()) {
	             map.put("success", true);
	             map.put("message", "정산 신청이 완료되었습니다.");
	             return ResponseEntity.ok(map);
	         } else {
	             map.put("success", false);
	             map.put("message", "일부 항목의 정산 신청 처리에 실패했습니다.");
	             return ResponseEntity.ok(map); // 일부만 실패한 경우도 있으므로, 상태 코드를 200으로 유지
	         }
	     } catch (Exception e) {
	         map.put("success", false);
	         map.put("message", "서버 내부 오류로 인해 정산 신청을 처리할 수 없습니다.");
	         return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(map);
	     }
	 }


	// 회원목록 출력
	@GetMapping("company/member")
	public String companyMember(HttpSession session, Model model) {
		
		 String sId = (String)session.getAttribute("sId");
		 System.out.println("Current sId from session: >>>>>>>>>>>>> " + sId);
		 
		 Integer comIdx = companyService.findComIdxBysId(sId);
		 System.out.println("Current comIdx from session: >>>>>>>>>>>>> " + comIdx);
		
		 List<CompanyClassVO> companyClassMember = companyService.getPaymentClassMembers(comIdx);
		 
	        Calendar now = Calendar.getInstance();
	        
	        for (CompanyClassVO companyClass : companyClassMember) {
	            Calendar startDate = Calendar.getInstance();
	            startDate.setTime(new java.util.Date(companyClass.getClass_start_date().getTime()));
	            
	            Calendar endDate = Calendar.getInstance();
	            endDate.setTime(new java.util.Date(companyClass.getClass_end_date().getTime()));
	            
	            if (startDate.after(now)) {
	                companyClass.setClassStatus("진행예정");
	            } else if (!startDate.after(now) && !endDate.before(now)) {
	                companyClass.setClassStatus("진행중");
	            } else if (endDate.before(now)) {
	                companyClass.setClassStatus("종료");
	            }
	        }
		 
		 model.addAttribute("companyClassMember", companyClassMember);
    
			return "company/company_member";
	    }
	
	// 리뷰 목록 출력
	@GetMapping("company/review")
	public String company_review(HttpSession session, Model model) {
		String sId = (String)session.getAttribute("sId");
		System.out.println("Current sId from session: >>>>>>>>>>>>> " + sId);
		
		Integer comIdx = companyService.findComIdxBysId(sId);
		System.out.println("Current comIdx from session: >>>>>>>>>>>>> " + comIdx);
		
		List<CompanyReviewDetailVO> companyReviewDetail = companyService.getReviewDetail(comIdx);
		model.addAttribute("companyReviewDetail",companyReviewDetail);
		
		
		return "company/company_review";
	}
	
	// 신고 관리
	@GetMapping("company/report")
	public String company_chat(HttpSession session, Model model) {
		String sId = (String)session.getAttribute("sId");
		System.out.println("Current sId from session: >>>>>>>>>>>>> " + sId);
		
//		Integer comIdx = companyService.findComIdxBysId(sId);
//		System.out.println("Current comIdx from session: >>>>>>>>>>>>> " + comIdx);
		
		List<ViewReportDetailByCompanyVO> reportDetail = companyService.getReportDetail(sId);
		model.addAttribute("reportDetail",reportDetail);
		
		return "company/company_report_list";
	}
	
	// 반장 차트
	@GetMapping("company/chart")
	public String company_chart(Model model, HttpSession session, PaymentVO payment, CompanyClassVO companyClass) {

		// 사업체 com_idx 산출
		String sId = (String)session.getAttribute("sId");
		System.out.println("Current sId from session: >>>>>>>>>>>>> " + sId);
		
		Integer comIdx = companyService.findComIdxBysId(sId);
		System.out.println("Current comIdx from session: >>>>>>>>>>>>> " + comIdx);
		
		// (1) 12개월 매출
		List<PaymentVO> recentSales = companyService.getRecentSales(comIdx);
		
		// Gson 객체 생성
        Gson gson = new Gson();
        // List<PaymentVO>를 JSON 문자열로 변환
        String recentSalesJson = gson.toJson(recentSales);
        System.out.println("recentSalesJson >>>>>" + recentSalesJson);
        model.addAttribute("recentSalesJson",recentSalesJson);
        
		
		// (2) 일별 클래스 등록수
		List<PaymentVO> classResgister = companyService.getClassRegister(comIdx);
		String classRegisterJson = gson.toJson(classResgister);
		model.addAttribute("classRegisterJson",classRegisterJson);
		

		// (3) 회원 성비
		List<CompanyGenderRatioVO> genderRatios = companyService.getGenderRatioByComIdx(comIdx);
        String genderRatioJson = gson.toJson(genderRatios);
        model.addAttribute("genderRatioJson",genderRatioJson);
        
        // (4) 일별 취소 건수
        List<PaymentVO> recentCancel = companyService.getRecentCancelByComIdx(comIdx);
        String recentCancelJson = gson.toJson(recentCancel);
        model.addAttribute("recentCancelJson",recentCancelJson);
        
        
		
		
		return "company/company_chart";
	}
	
	
	// 반장 쿠폰 관리
	@GetMapping("company/coupon")
	public String company_coupon(HttpSession session, Model model, CouponVO coupon) {

		// 사업체 com_idx 산출
		String sId = (String)session.getAttribute("sId");
		System.out.println("Current sId from session: >>>>>>>>>>>>> " + sId);
		
		Integer comIdx = companyService.findComIdxBysId(sId);
		System.out.println("Current comIdx from session: >>>>>>>>>>>>> " + comIdx);
		
		List<CouponVO> classCoupon = companyService.getClassCoupon(comIdx);
		model.addAttribute("classCoupon",classCoupon);
		
		
		return "company/company_coupon";
	}
	
	// 반장 공지사항
	@GetMapping("company/notification")
	public String company_notification(Model model, BoardVO board) {
	
		List<BoardVO> companyBoardList = companyService.getCompanyBoardList(1,2);
		companyBoardList = companyBoardList == null ? Collections.emptyList() : companyBoardList; // `null` 체크
		model.addAttribute("companyBoardList",companyBoardList);	
		
		return "company/company_notification";
	}

	// 반장 프로필
	@GetMapping("company/profile")
	public String company_profile(HttpSession session, Model model, CompanyVO company) {
		// 사업체 com_idx 산출
		String sId = (String)session.getAttribute("sId");
		System.out.println("Current sId from session: >>>>>>>>>>>>> " + sId);
		
		Integer comIdx = companyService.findComIdxBysId(sId);
		System.out.println("Current comIdx from session: >>>>>>>>>>>>> " + comIdx);
		
		List<CompanyVO> companyProfile = companyService.getCompanyProfile(comIdx);
		model.addAttribute("companyProfile",companyProfile);
		
		
		return "company/company_profile";
	}
	
	
	@GetMapping("company/sales2")
	public String company_sales2() {
		return "company/company_sales2";
	}
	
	
	@GetMapping("company/inquiry")
	public String company_inquiry() {
		return "company/company_inquiry";
	}
	
	@GetMapping("company/coupon2")
	public String company_coupon2() {
		return "company/company_coupon2";
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
	
	
}
