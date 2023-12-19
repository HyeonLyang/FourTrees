package com.itbank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.PhotoDAO;

@Service
public class PhotoService {
	
	@Autowired private PhotoDAO dao;
	
}
