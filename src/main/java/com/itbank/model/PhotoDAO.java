package com.itbank.model;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.itbank.model.vo.PhotoVO;

public interface PhotoDAO {
	
	@Select("select a.* , b.writer as nick, c.name as res_name " + 
			"from img a inner join review b on a.rev_idx = b.idx " + 
			"inner join restaurant c on b.res_idx = c.idx " + 
			"where a.rev_idx = b.idx and b.res_idx = c.idx " + 
			"order by a.idx desc")
	List<PhotoVO> selectAll();

	@Select("select a.* , b.writer as nick, c.name as res_name " + 
			"from img a inner join review b on a.rev_idx = b.idx " + 
			"inner join restaurant c on b.res_idx = c.idx " + 
			"where a.rev_idx = b.idx and b.res_idx = c.idx " + 
			"and b.res_idx = #{idx}" + 
			"order by a.idx desc")
	List<PhotoVO> selectResPhoto(int idx);

}
