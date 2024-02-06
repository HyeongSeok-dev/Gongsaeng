package kr.co.gongsaeng.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.co.gongsaeng.service.CommunityService;
import kr.co.gongsaeng.vo.BoardVO;

@Controller
public class CommunityController {
	@Autowired
	private CommunityService service;
	
	//=================================================================
	// [ 글쓰기 ]
	// "community/write" 서블릿 요청에 대한 글쓰기 폼 표시
	@GetMapping("community/write")
	public String write(HttpSession session, Model model) {
		// 세션 아이디 없을 경우 "로그인이 필요합니다" 처리를 위해 "forward.jsp" 페이지 포워딩
		if(session.getAttribute("sId") == null) {
		model.addAttribute("msg", "로그인이 필요합니다");
			// targetURL 속성명으로 로그인 폼 페이지 서블릿 주소 저장
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			return "forward";
		}
		
		return "community/cm_write";
	}
	
	@PostMapping("community/writePro")
	public String writePro(BoardVO board, HttpSession session, Model model, HttpServletRequest request) {
		System.out.println(board);
		if(session.getAttribute("sId") == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			// targetURL 속성명으로 로그인 폼 페이지 서블릿 주소 저장
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			return "forward";
		}
		
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
		MultipartFile mFile1 = board.getFile1();
		MultipartFile mFile2 = board.getFile2();
		MultipartFile mFile3 = board.getFile3();
		
		// --------------------------
		// [ 파일명 중복방지 대책 ]
		board.setBoard_img1("");
		board.setBoard_img2("");
		board.setBoard_img3("");
		
		String fileName1 = UUID.randomUUID().toString().substring(0, 8) + "_" + mFile1.getOriginalFilename();
		String fileName2 = UUID.randomUUID().toString().substring(0, 8) + "_" + mFile2.getOriginalFilename();
		String fileName3 = UUID.randomUUID().toString().substring(0, 8) + "_" + mFile3.getOriginalFilename();

		if(!mFile1.getOriginalFilename().equals("")) {
			board.setBoard_img1(subDir + "/" + fileName1);
		}
		if(!mFile2.getOriginalFilename().equals("")) {
			board.setBoard_img2(subDir + "/" + fileName2);
		}
		if(!mFile3.getOriginalFilename().equals("")) {
			board.setBoard_img3(subDir + "/" + fileName3);
		}
		
//		System.out.println("실제 업로드 파일명1 : " + board.getBoard_img1());
//		System.out.println("실제 업로드 파일명2 : " + board.getBoard_img2());
//		System.out.println("실제 업로드 파일명3 : " + board.getBoard_img3());
		
		// ----------------------------------------------------------------------
		// BoardService - registBoard() 메서드 호출하여 게시물 등록 작업 요청
		// => 파라미터 : BoardVO 객체   리턴타입 : int(insertCount)
		int insertCount = service.registBoard(board);
		
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
				
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			model.addAttribute("msg", "글이 등록되었습니다.");
			return "back2";
		    
		} else {
			// "글쓰기 실패!" 메세지 처리(fail_back)
			model.addAttribute("msg", "글쓰기 실패!");
			return "fail_back";
		}
		
	}
	
	
	// -------------
		// AJAX 요청을 통한 글목록 조회 처리 형식으로 변경
		// => 기본 글목록 서블릿(BoardList) 요청 시 무조건 board_list.jsp 페이지로 포워딩
		// => 해당 뷰페이지에서 AJAX 로 BoardListJson 서블릿을 별도로 요청
		@GetMapping("community/together")
		public String together() {
			return "community/cm_together";
		}
		
		@ResponseBody
		@GetMapping("community/togetherJson")
		public String togetherJson(
				@RequestParam(defaultValue = "") String searchType,
				@RequestParam(defaultValue = "") String searchKeyword,
				@RequestParam(defaultValue = "1") int pageNum,
				Model model) {
			
			// ----------------------------------------------------------------
			// 페이징 처리를 위해 조회 목록 갯수 조절 시 사용될 변수 선언
			int listLimit = 10;
			int startRow = (pageNum - 1) * listLimit;
			// --------------------------------------------------------------------
			// BoardService - getBoardList() 메서드 호출하여 게시물 목록 조회 요청
			// => 파라미터 : 검색타입, 검색어, 시작행번호, 게시물 목록갯수
			// => 리턴타입 : List<BoardVO>(boardList)
			List<BoardVO> boardList = service.getBoardList(searchType, searchKeyword, startRow, listLimit);
//			// --------------------------------------------------------------------
//			// 페이징 처리를 위한 계산 작업
//			// BoardService - getBoardListCount() 메서드 호출하여 전체 게시물 목록 갯수 조회 요청
//			// => 파라미터 : 검색타입, 검색어
//			// => 리턴타입 : int(listCount)
			int listCount = service.getBoardListCount(searchType, searchKeyword);
			int maxPage = listCount / listLimit + (listCount % listLimit > 0 ? 1 : 0);
			// --------------------------------------------------------------------
			// 게시물 목록 조회 결과를 Map 객체에 추가(키 : "boardList")
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("boardList", boardList);
//			System.out.println(map);
			
			// 페이징 처리 결과 중 마지막 페이지 번호(maxPage)도 Map 객체에 추가(키 : "maxPage")
			map.put("maxPage", maxPage);
			// --------------------------------------------------------------------
			// [ 자바 데이터(객체 포함)를 JSON 형식의 객체로 변환 ]
			// - org.json 패키지의 JSONObject 클래스를 활용하여 JSON 객체를 관리하고
			//   JSONArray 클래스를 활용하여 복수개의 JSON 객체 또는 데이터를 관리
			//    => 파라미터로 컬렉션 객체에 해당하는 객체 전달 시 해당 객체를 JSON 객체로 변환
			// 1. JSONXXX 객체 생성하여 JSON 객체로 변환
			// ------------ JSON 객체({}) 여러개를 하나의 묶음([])으로 관리할 경우 --------------
			// List 객체 or 배열 1개를 JSONArray 객체 생성자 파라미터로 전달
//			JSONArray jsonArray = new JSONArray(boardList);
			// ------------ 만약, 1개의 객체를 JSON 객체로 관리할 경우 --------------
			// Map 객체 or VO 객체 1개를 JSONObject 객체 생성자 파라미터로 전달
			JSONObject jsonObject = new JSONObject(map);
//			JSONObject jsonObject = new JSONObject(boardList.get(0));
//			System.out.println(jsonObject);
			
			// 2. 생성된 JSON 객체를 응답 데이터로 출력 
			//    => toString() 메서드를 통해 문자열로 변환 필요
			return jsonObject.toString();
		}
		
	
	@GetMapping("community/togetherDetail")
	public String togetherDetail() {
		return "community/cm_togetherDetail";
	}

	@GetMapping("community/question")
	public String question() {
		return "community/cm_question";
	}
	
	@GetMapping("community/questionDetail")
	public String questionDetail() {
		return "community/cm_questionDetail";
	}
	
	@GetMapping("community/myHome")
	public String myHome() {
		return "community/cm_myHome";
	}
	
	@GetMapping("community/myHomeDetail")
	public String myHomeDetail() {
		return "community/cm_myHomeDetail";
	}
	
	@GetMapping("community/modify")
	public String modify() {
		return "community/cm_modify";
	}
	
	@GetMapping("community/delete")
	public String delete() {
		return "community/cm_delete";
	}
	

}

