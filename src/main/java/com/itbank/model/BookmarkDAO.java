package com.itbank.model;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.itbank.model.vo.AccountVo;
import com.itbank.model.vo.BookmarkVO;

public interface BookmarkDAO {

	@Select("select count(*) as cnt from bookmark where res_idx = #{idx}")
	int getBmkCnt(int idx);

	@Insert("INSERT INTO bookmark (acc_idx, res_idx, mark_date) VALUES (#{acc_idx}, #{res_idx}, #{mark_date})")
    void insertBookmark(BookmarkVO bookmark);

	@Select("SELECT b.idx, b.acc_idx, b.res_idx, b.mark_date, r.name AS res_name, r.address AS res_address FROM bookmark b JOIN restaurant r ON b.res_idx = r.idx")
	List<BookmarkVO> selectAllWithRestaurantInfo()
	
	@Select("SELECT COUNT(*) FROM bookmark WHERE acc_idx = #{acc_idx} AND res_idx = #{res_idx}")
	int checkBookmarkExists(@Param("acc_idx") int accIdx, @Param("res_idx") int resIdx);
}
