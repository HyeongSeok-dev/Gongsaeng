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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
		
		System.out.println("원본파일명1 : " + mFile1.getOriginalFilename());
		System.out.println("원본파일명2 : " + mFile2.getOriginalFilename());
		System.out.println("원본파일명3 : " + mFile3.getOriginalFilename());
		
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
		
		System.out.println("실제 업로드 파일명1 : " + board.getBoard_img1());
		System.out.println("실제 업로드 파일명2 : " + board.getBoard_img2());
		System.out.println("실제 업로드 파일명3 : " + board.getBoard_img3());
		
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
			
			// 글목록 서블릿 리다이렉트
			model.addAttribute("msg", "글이 등록되었습니다.");
		    String referer = request.getHeader("Referer");
		    return "redirect:" + referer;
		    
		} else {
			// "글쓰기 실패!" 메세지 처리(fail_back)
			model.addAttribute("msg", "글쓰기 실패!");
			return "fail_back";
		}
		
	}
	
	@GetMapping("community/together")
	public String together() {
		return "community/cm_together";
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

