<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>    
<link rel="stylesheet" href="${cpath }/resources/css/account/myPage.css">		
<!-- 마이페이지 css 폴더로 보냈습니다 -->
<section class="myPage_art">

	<div class="profile">
		<div class="pro_img">
			<img src="${cpath }/resources/img/review/기본 프로필.jpg">
			<div class="nick">			
				<h3>${user.nick }</h3>
				<h4>${user.nick }님 환영합니다</h4>
			</div>
		</div>		
		<div class="profile_modify">
			<a href="${cpath }/myPage/password">			
				<img src="${cpath }/resources/img/review/review_write.png" 
				style="width: 70px;">
			</a>
		</div>
	</div>
	
    <div class="headline">
    	 <p><a href="${cpath }">홈</a></p>         
         <p><a href="${cpath }/myPage/bookmark">북마크</a></p>
         <p><a href="${cpath }/myPage/myReply">댓글</a></p>
         <p><a href="${cpath }/support/QNA">고객센터</a></p>
    </div>

	<article class="password_input">
		<h4>내 정보를 보시려면 비밀번호를 먼저 입력하세요</h4>
		<form method="POST">
			<p><input name="pw" type="password" placeholder="패스워드" required></p>
		
			<button>확인</button>	
		</form>
		
	</article>
</section>

<%@ include file="../footer.jsp" %>
</body>
</html>