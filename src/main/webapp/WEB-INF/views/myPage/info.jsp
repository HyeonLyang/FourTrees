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
		<p><a href="${cpath }/myPage/info" style="color: #ff7f50;">회원정보변경</a></p>
		<p><a href="${cpath }/myPage/info_pw_change">비밀번호변경</a></p>
		<p><a href="${cpath }/myPage/info_delete">회원탈퇴</a></p>     
    </div>

	<form class="myPage_UD" method="POST">

		<h3>내정보</h3>
		
		<div class="user_info">
			<table class="board">
				<tr>
					<th>회원코드</th>
					<td><input name="idx" value="${user.idx }" readonly="readonly"
						style="background-color: #d7d7d7;"></td>										
				</tr>
				
				<tr>
					<th>이메일</th>					
					<td>
						<input name="email" type="email" placeholder="이메일을 입력하세요" required>
						<i class="email_msg"></i>					
					</td>					
				</tr>
				
				<tr>
					<th>전화번호</th>
					<td>
						<input name="phone" placeholder="휴대폰 번호를 입력해주세요" required>
						<i class="phone_msg"></i>		
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

<script>
	function back(cpath) {
		location.href = cpath + '/myPage/bookmark';
	}
</script>
<%@ include file="../footer.jsp" %>
</body>
</html>