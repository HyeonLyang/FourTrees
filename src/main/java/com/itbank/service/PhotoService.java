package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.PhotoDAO;
import com.itbank.model.vo.PhotoVO;

@Service
public class PhotoService {
	
	@Autowired private PhotoDAO dao;

	public List<PhotoVO> getImg() {
		return dao.selectAll();
	}

	public List<PhotoVO> getPhotoList(int idx) {
		return dao.selectResPhoto(idx);
	}
	
}
