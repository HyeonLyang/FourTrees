package com.itbank.service;

import java.io.File;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.itbank.components.AwsS3;
import com.itbank.components.SHA512;
import com.itbank.model.AccountDAO;
import com.itbank.model.vo.AccountVo;

@Service
public class AccountService {

	@Autowired private AccountDAO dao;
	@Autowired private SHA512 hash;
	@Autowired private AwsS3 awsS3;			
	
	@Value("file:C:\\img\\account")
	private Resource dir;
	
	public AccountVo login(AccountVo input) {
		return dao.selectOne(input);
	}

	public int addAccount(AccountVo input) {		
		return dao.insert(input);
	}

	public int deleteAccount(int idx) {		
		return dao.delete(idx);
	}

	public int updateAccount(AccountVo input) {		
		return dao.update(input);
	}

	public int updatePW(AccountVo input) {
		return dao.updatePW(input);
	}

	public String findAccount(String email) {
		return dao.selectUserid(email);
	}

	public AccountVo findPW(AccountVo input, int option) {				
		return dao.selectUserpw(input);						
	}

	public int NewPW(AccountVo input, int etc) throws NoSuchAlgorithmException {	
		input.setUserpw(hash.getHash(input.getUserpw()));
		return dao.updateUserpw(input);		
	}

	public List<AccountVo> viewAccount() {		
		return dao.selectAll();
	}

	public int updateImg(AccountVo input, int add) throws IOException {
		awsS3 = AwsS3.getInstance();
		System.out.println(awsS3);
		MultipartFile file = input.getImg_upload();
		input.setImg(file.getOriginalFilename());		
		
		int row = dao.updateImg(input);
		String key = file.getOriginalFilename();				
		
		File dest = new File(dir.getFile(), key);
		file.transferTo(dest);
				
		awsS3.upload(dest, key, "account",0);
		
		return row;
	}
	
}
