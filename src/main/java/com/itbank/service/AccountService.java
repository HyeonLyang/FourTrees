package com.itbank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.AccountDAO;
import com.itbank.model.vo.AccountVo;

@Service
public class AccountService {

	@Autowired private AccountDAO dao;
	
	public AccountVo login(AccountVo input) {
		return dao.selectOne(input);
	}

	public int addAccount(AccountVo input) {		
		return dao.insert(input);
	}

	public int deleteAccount(int idx) {		
		return dao.delete(idx);
	}

	public int updteAccount(AccountVo input) {		
		return dao.update(input);
	}
	
}
