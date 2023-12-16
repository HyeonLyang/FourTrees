<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>		
<link rel="stylesheet" href="${cpath }/resources/css/account/login.css">
<article class="accFind">	
	<div class="find_header">	
		<div class="find">
			<p style="color: yellow;">아이디 찾기</p>
			<p>비밀번호 찾기</p>
		</div>	
	</div>
	
	<div class="find_main">
		<h3>아이디 찾기</h3>		
		
		<p>아이디를 찾는 방법을 선택해주세요</p>
	</div>	
	
	<div class="select_main">
		<div class="select_header">
			<div class="select_header1">							
				<legend>회원정보에 등록한 이메일로 인증</legend> 		
			</div>		
			<div class="select_header2">			
				<p>회원정보에 등록한 이메일과 입력한 이메일이 같아야, 아이디를 알려줄 수 있습니다</p>
			</div>
		</div>
		
		<form method="post" class="select_email">			
			<div class="input_email">			
				<label>이메일</label>
				<input name="email" type="email" required>
			</div>
			
			<button>찾기</button>
		</form>				
	</div>
</article>
</body>
</html>