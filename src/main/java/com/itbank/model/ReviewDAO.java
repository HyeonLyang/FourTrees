package com.itbank.model;

import java.util.List;

import com.itbank.components.Paging;
import com.itbank.model.vo.ReviewVO;

public interface ReviewDAO {

	int insert(ReviewVO input);

	List<ReviewVO> selectAll(Paging p);

	int getTotalReview();

	List<ReviewVO> selectReviews(int idx);

	String selectidx();

	List<ReviewVO> selectImg();

	List<Double> getResScores(int idx);

	
}
