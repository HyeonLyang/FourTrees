<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
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
	
    
    <div class="headline">	    	
		<p><a href="${cpath }/myPage/info">회원정보변경</a></p>
		<p><a href="${cpath }/myPage/info_pw_change" style="color: #ff7f50;">비밀번호변경</a></p>
		<p><a href="${cpath }/myPage/info_delete">회원탈퇴</a></p>     
    </div>

	<form class="myPage_UD" method="POST">
	
		<h3>비밀번호 변경</h3>
	
		<div class="user_info">
			<table class="board">
				<tr>
					<th>현재 비밀번호</th>
					<td><input name="pw" type="password" value="${user.userpw }" 
						style="background-color: #d7d7d7;" readonly></td>										
				</tr>
				
				<tr>
					<th>새 비밀번호</th>					
					<td>
						<input name="userpw" type="password" placeholder="변경하실 새 비밀번호를 입력하세요" required>				
					</td>					
				</tr>
				
				<tr>
					<th>새 비밀번호 확인</th>
					<td>
						<input name="pw_check" type="password" placeholder="새 비밀번호를 다시 한 번 입력하세요" 
						required>		
					</td>
				</tr>
			</table>					
		</div>
		
		<div class="save_cancel">
			<button type="button" onclick="back('${cpath }')">취소</button>
			<button>저장</button>
		</div>
	</form>
</article> 
<%@ include file="../footer.jsp" %>
</body>
</html>