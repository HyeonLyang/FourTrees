package com.itbank.service;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.jsp.PageContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.itbank.components.Paging;
import com.itbank.model.ReviewDAO;
import com.itbank.model.vo.ReviewVO;

@Service
public class ReviewService {
	
	@Autowired private ReviewDAO dao;
	
	@Value("file:C:\\Users\\하준우\\Desktop\\MZ\\"
			+ "fourtreesTest\\src\\main\\webapp\\resources\\img\\review")
	private Resource dir;

	public int addReview(ReviewVO input) throws IOException {
		MultipartFile file = input.getUpload();
		input.setImg(file.getOriginalFilename());
		
		int row = dao.insert(input);
		
		File dest = new File(dir.getFile(), file.getOriginalFilename());
		file.transferTo(dest);				
		
		return row;
	}

	public Map<String, Object> getReview(int reqPage) {
		Paging p = new Paging(reqPage, dao.getTotalReview());
		
		List<ReviewVO> list = dao.selectAll(p);
		
		Map<String, Object> result = new HashMap<>();
		
		result.put("list", list);
		result.put("p", p);
		
		return result;
	}

	public List<ReviewVO> getReviews(int idx) {
		return dao.selectReviews(idx);
	}

}
