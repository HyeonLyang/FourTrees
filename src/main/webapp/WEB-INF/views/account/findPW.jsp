<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>		
<link rel="stylesheet" href="${cpath }/resources/css/account/login.css">
<article class="accFind">	
	<div class="find_header">	
		<div class="find">
			<p>아이디 찾기</p>
			<p style="color: yellow;">비밀번호 찾기</p>
		</div>	
	</div>
	
	<div class="find_main">
		<h3>비밀번호 찾기</h3>		
		
		<p>비밀번호를 찾기 위해선 아이디와 이메일을 작성하세요</p>
	</div>	
	
	<div class="select_main">
		<div class="select_header">
			<div class="select_header1">							
				<legend>회원정보에 등록한 아이디와 이메일로 인증</legend> 		
			</div>		
			<div class="select_header2">			
				<p>회원정보에 등록한 아이디와 이메일을 입력해야, 비밀번호를 알려줄 수 있습니다</p>
			</div>
		</div>
		
		<form method="post" class="pw_search">
			<div class="input_name">			
				<label>이름</label>
				<input name="name" required>
			</div>
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