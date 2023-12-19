package com.itbank.model;

import java.util.List;

import com.itbank.components.Paging2;
import com.itbank.model.vo.NoticeVO;

public interface SupportDAO {

	List<NoticeVO> selectAll(Paging2 p);
	
	int getTotalNotice(int idx);
}
