package com.itbank.model;

import java.util.List;

import com.itbank.components.Paging;
import com.itbank.model.vo.AccountVo;
import com.itbank.model.vo.ReviewVO;

public interface ReviewDAO {

	int insert(ReviewVO input);

	List<ReviewVO> selectAll(Paging p);

	int getTotalReview(int res_idx);

	List<ReviewVO> selectReviews(int idx);

	List<ReviewVO> selectRes_name(int res_idx);

	List<ReviewVO> selectImg(int res_idx);

	List<ReviewVO> imgCollect(int res_idx);

	List<Double> getResScores(int idx);

	List<ReviewVO> nickReview(AccountVo nick);

	int delete(int idx);

	int insertImg(ReviewVO input);
}
