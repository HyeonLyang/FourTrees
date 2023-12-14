package com.itbank.service;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.itbank.components.Paging;
import com.itbank.model.RestaurantDAO;
import com.itbank.model.ReviewDAO;
import com.itbank.model.vo.ReviewVO;

@Service
public class ReviewService {
	
	@Autowired private ReviewDAO dao;
	@Autowired private RestaurantDAO res_dao;
	
	@Value("file:C:\\img")
	private Resource dir;

	public int addReview(ReviewVO input) throws IOException {
		MultipartFile file = input.getUpload();
		input.setImg(file.getOriginalFilename());
		
		int row = dao.insert(input);
		List<ReviewVO> list = dao.selectRes_name(input.getRes_idx());

		List<Double> scoreList = dao.getResScores(input.getIdx());
		double scoreSum = 0;
		
		for(double score : scoreList) {
			scoreSum += score;
		}
		scoreSum += input.getScore();
		double resScore = scoreSum / scoreList.size();
		
		res_dao.updateScore(resScore);
		
		String res_name = "";
		
		for(ReviewVO r : list) {
			res_name = r.getRes_name(); 
		}
				
		File newDir = new File(dir.getFile(), res_name);
		
		if (newDir.exists() == false) {			
			newDir.mkdir();
			
		}				
		
		File dest = new File(newDir, file.getOriginalFilename());
		file.transferTo(dest);
		
		return row;
	}

	public Map<String, Object> getReview(int reqPage, int res_idx) {
		Paging p = new Paging(reqPage, dao.getTotalReview(res_idx), res_idx);						
		
		List<ReviewVO> list = dao.selectAll(p);
		
		Map<String, Object> result = new HashMap<>();
		
		result.put("list", list);
		result.put("p", p);
		
		return result;
	}

	public List<ReviewVO> getReviews(int idx) {
		return dao.selectReviews(idx);
	}

	public List<ReviewVO> imgCollection(int res_idx) {		
		return dao.imgCollect(res_idx);
	}

}
