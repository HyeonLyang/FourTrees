package com.itbank.model;

import org.apache.ibatis.annotations.Select;

public interface BookmarkDAO {

	@Select("select count(*) as cnt from bookmark where res_idx = #{idx}")
	int getBmkCnt(int idx);
	
}
