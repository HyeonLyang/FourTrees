package com.itbank.service;

import java.security.NoSuchAlgorithmException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.components.SHA512;
import com.itbank.model.AccountDAO;
import com.itbank.model.vo.AccountVo;

@Service
public class AccountService {

	@Autowired private AccountDAO dao;
	@Autowired private SHA512 hash;
	
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
	
}
