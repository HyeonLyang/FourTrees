package com.itbank.model;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.itbank.model.vo.AccountVo;
import com.itbank.model.vo.BookmarkVO;

public interface BookmarkDAO {

	@Select("select count(*) as cnt from bookmark where res_idx = #{idx}")
	int getBmkCnt(int idx);

	@Select("select r.name as res_name,r.address as res_address from bookmark b "
				+ "left outer join restaurant r "
					+ "on r.idx = b.res_idx "
				+ "left join account a "
					+ "on a.idx = b.acc_idx "
				+ "where a.nick = #{nick}")
	List<BookmarkVO> getNickBookmark(AccountVo nick);
	
}
