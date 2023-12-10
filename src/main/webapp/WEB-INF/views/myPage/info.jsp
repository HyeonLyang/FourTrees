<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>	
<link rel="stylesheet" href="${cpath }/resources/css/account/myPage.css">

<article class="myPage_art">
	<div class="profile">
		<div class="pro_img">
			<img src="${cpath }/resources/img/review/기본 프로필.jpg">
			<div class="nick">			
				<h3>${user.nick }</h3>
				<h4>${user.nick }님 환영합니다</h4>
			</div>
		</div>				
	</div>
	
    
	<form class="myPage_UD" method="POST">
	    <div class="headline">
	    	<button>회원정보변경</button>
			
			<button type="button" onclick="isDelete(${user.idx }, '${cpath }')">
				회원탈퇴
			</button>        
	    </div>

		<h3>내정보</h3>
		<table class="boards" style="width: 60%; font-size: 120%;">			
			<tr>
				<th>아이디</th>
				<td>${user.userid }</td>
			</tr>
			<tr>
				<th>패스워드</th>
				<td><input name="userpw" type="password" required></td>
			</tr>
			<tr>
				<th>닉네임</th>
				<td>${user.nick }</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>${user.email }</td>
			</tr>
			<tr>
				<th>가입날짜</th>
				<td>${user.join_date }</td>
			</tr>
		</table>				
	</form>
</article>    

<script>
	/* 삭제할 시 한번 더 묻기 */
	function isDelete(idx, cpath) {
		let del = confirm('탈퇴 하시겠습니까?');
		
		if (del) {
			location.href = cpath + '/myPage/delete/' + idx;
		}
	}
</script>
<%@ include file="../footer.jsp" %>
</body>
</html>