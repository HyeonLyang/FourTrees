package com.itbank.model;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.itbank.model.vo.AccountVo;

public interface AccountDAO {

	@Select("select * from account "
			+ "where userid = #{userid} and userpw = #{userpw}")
	AccountVo selectOne(AccountVo input);

	@Insert("insert into account(userid, userpw, nick, email, "
			+ "birth, phone, foreigner, gender) values("
			+ "#{userid}, #{userpw}, #{nick}, #{email}, #{birth}, "
			+ "#{phone}, #{foreigner}, #{gender})")
	int insert(AccountVo input);

	@Delete("delete from account where idx = #{idx}")
	int delete(int idx);

	@Update("update account "
				+ "set "											
				+ "email = #{email}, "
				+ "phone = #{phone} "
		  + "where userid = #{userid}")
	int update(AccountVo input);

	@Update("update account "
				+ "set "
				+ "userpw = #{userpw} "
			+ "where userid = #{userid}")
	int updatePW(AccountVo input);

	@Select("select userid from account where email = #{email}")
	String selectUserid(String email);

	@Select("select * from account where userid = #{userid} and email = #{email}")
	AccountVo selectUserpw(AccountVo input);

	@Update("update account "
				+ "set "
				+ "userpw = #{userpw} "
			+ "where userid = #{userid} and email = #{email}")
	int updateUserpw(AccountVo input);

	@Select("select * from account")
	List<AccountVo> selectAll();

	@Update("update account set img = #{img} where nick = #{nick}")
	int updateImg(AccountVo input);

}
