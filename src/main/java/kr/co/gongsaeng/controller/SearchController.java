package kr.co.gongsaeng.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.gongsaeng.service.SearchService;
import kr.co.gongsaeng.vo.ClassVO;
import kr.co.gongsaeng.vo.SearchVO;

@Controller
public class SearchController {
	@Autowired
	private SearchService searchService;
	
	@GetMapping("class/list")
	public String classList() {
		return "class_list";
	}
	
	// 검색결과
	@ResponseBody
	@GetMapping("SearchListJson")
	public String searchListJson(
	        @ModelAttribute SearchVO searchData,
	        HttpSession session, Model model) {
		
		// 세션 아이디가 없을 경우 : 초기화
		String member_id = "";
		
		// 세션 아이디가 존재할 경우
		if(session.getAttribute("sId") != null) {
			member_id = session.getAttribute("sId").toString();
		}
		
		int listLimit = 9;
	    int startRow = (searchData.getPageNum() - 1) * listLimit;

	    List<ClassVO> searchClassList = searchService.getSearchClassList(searchData, member_id, startRow, listLimit);
	    
	    int listCount = searchService.getSearchClassCount(searchData, member_id);
	    int maxPage = listCount / listLimit + (listCount % listLimit > 0 ? 1 : 0);
	    
	    Map<String, Object> map = new HashMap<String, Object>();
	    map.put("searchClassList", searchClassList);
	    map.put("maxPage", maxPage);
	    map.put("listCount", listCount);

	    JSONObject jsonObject = new JSONObject(map);

	    return jsonObject.toString();
	}
}
