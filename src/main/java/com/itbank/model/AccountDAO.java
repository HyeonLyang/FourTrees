package com.itbank.model;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.itbank.model.vo.AccountVo;

public interface AccountDAO {

	@Select("select * from account "
			+ "where userid = #{userid} and userpw = #{userpw}")
	AccountVo selectOne(AccountVo input);

	@Insert("insert into account(userid, userpw, nick, email, status, "
			+ "birth, phone, foreigner, gender, area) values("
			+ "#{userid}, #{userpw}, #{nick}, #{email}, #{status}, #{birth}, "
			+ "#{phone}, #{foreigner}, #{gender}, #{area})")
	int insert(AccountVo input);

	@Delete("delete from account where idx = #{idx}")
	int delete(int idx);

	@Update("update account "
				+ "set "
				+ "userid = #{userid}, "
				+ "userpw = #{userpw}, "
				+ "nick = #{nick}, "
				+ "email = #{email} "
		  + "where idx = #{idx}")
	int update(AccountVo input);

}
