package kr.co.gongsaeng.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gongsaeng.mapper.ReviewMapper;

@Service
public class ReviewService {
	
	@Autowired
	private ReviewMapper mapper;
}
