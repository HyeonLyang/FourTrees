package com.itbank.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.itbank.components.AwsS3;
import com.itbank.components.Paging;
import com.itbank.model.RestaurantDAO;
import com.itbank.model.ReviewDAO;
import com.itbank.model.vo.AccountVo;
import com.itbank.model.vo.ReviewVO;

@Service
public class ReviewService {
	
	@Autowired private ReviewDAO dao;
	@Autowired private RestaurantDAO res_dao;
	@Autowired private AwsS3 awsS3;	

	public int addReview(ReviewVO input) throws IOException {
		awsS3 = AwsS3.getInstance();
		MultipartFile file = input.getUpload();
		String key = file.getOriginalFilename();
		
		input.setImg(key);
		
		int row = dao.insert(input);
		List<ReviewVO> list = dao.selectRes_name(input.getRes_idx());

		List<Double> scoreList = dao.getResScores(input.getRes_idx());
		double scoreSum = 0;
		double resScore = 0;
		
		if(scoreList != null) {
			for(double score : scoreList) {
				scoreSum += score;
			}
			resScore = scoreSum / scoreList.size();
			resScore = Math.round(resScore * 10) / 10.0 ;
		}	
		else {
			resScore = input.getScore();
		}		
		input.setScore(resScore);
						
		res_dao.updateScore(input);
		
		String res_name = "";
		
		for(ReviewVO r : list) {
			res_name = r.getRes_name(); 
		}
		
		System.out.println(res_name);
				
		awsS3.upload(file, key, res_name, 1);
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

	public List<ReviewVO> nickReview(AccountVo nick) {
		return dao.nickReview(nick);
	}

	public int delete(ReviewVO input) {
		int row = dao.delete(input.getIdx());
		
		List<Double> scoreList = dao.getResScores(input.getRes_idx());
		double scoreSum = 0;
		double resScore = 0;
		
		if(scoreList != null) {
			for(double score : scoreList) {
				scoreSum += score;
			}
			resScore = scoreSum / scoreList.size();
			resScore = Math.round(resScore * 10) / 10.0 ;
		}	
		else {
			resScore = input.getScore();
		}		
		input.setScore(resScore);
		
		res_dao.updateScore(input);
		
		return row;
	}

}
