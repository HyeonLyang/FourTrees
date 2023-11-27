package com.itbank.model;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.itbank.components.Paging;
import com.itbank.model.vo.ReviewVO;

public interface ReviewDAO {

	@Insert("insert into "
			+ "review (writer, content, visit_date, score, img, res_idx)"
			+ "values (#{writer}, #{content}, #{visit_date}, "
			+ "#{score}, #{img}, #{res_idx})")
	int insert(ReviewVO input);

	@Select("select r.*, b.name as res_name, b.address as res_address from review r "
			+ "inner join restaurant b "
			+ "on r.res_idx = b.idx "
			+ "offset #{offset} rows "
			+ "fetch first #{perCount} rows only")
	List<ReviewVO> selectAll(Paging p);

	@Select("select count(*) from review")
	int getTotalReview();

	@Select("select * from review where res_idx = #{idx} order by idx desc")
	List<ReviewVO> selectReviews(int idx);

}
