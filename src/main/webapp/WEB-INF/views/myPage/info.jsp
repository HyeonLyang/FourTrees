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
					<th>ID</th>
					<td><input name="userid" value="${user.userid }" readonly
						style="background-color: #d7d7d7;"></td>										
				</tr>
				
				<tr>
					<th>이메일</th>					
					<td>
						<input name="email" type="email" placeholder="이메일을 입력하세요" required><br>
						<i class="email_msg"></i>					
					</td>					
				</tr>
				
				<tr>
					<th>전화번호</th>
					<td>
						<input name="phone" placeholder="휴대폰 번호를 입력해주세요" required><br>
						<i class="phone_msg"></i>		
					</td>
				</tr>
			</table>	
						
			<input name="email_check" type="hidden" value="${user.email }">
			<input name="phone_check" type="hidden" value="${user.phone }">				
		</div>
		
		<div class="save_cancel">
			<button type="button" onclick="back('${cpath }')">취소</button>
			<button>저장</button>
		</div>
	</form>
</article>    

<script>
	let email = document.getElementsByName('email')[0];
	let email_check = document.getElementsByName('email_check')[0];
	let email_msg = document.querySelectorAll('.email_msg')[0];
	
	email.onblur = () => {
		if (email.value == email_check.value) {
			email_msg.innerHTML = '이메일이 전과 같습니다';
			email_msg.style.color = 'red';
			email.value = '';
			email.focus();
		}
		else {
			email_msg.innerHTML = '';			
		}
	}
	
	let phone = document.getElementsByName('phone')[0];
	let phone_check = document.getElementsByName('phone_check')[0];
	let phone_msg = document.querySelectorAll('.phone_msg')[0];
	
	phone.onblur = () => {
		if (phone.value == phone_check.value) {
			phone_msg.innerHTML = '번호가 전과 같습니다';
			phone_msg.style.color = 'red';
			phone.value = '';
			phone.focus();
		}
		else {
			phone_msg.innerHTML = '';			
		}
	}
</script>
<%@ include file="../footer.jsp" %>
</body>
</html>