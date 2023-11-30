<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>    
<link rel="stylesheet" href="${cpath }/resources/css/account/myPage.css">		
<!-- 마이페이지 css 폴더로 보냈습니다 -->
<article>
    <hr>
        <div class="headline">
            <p><a href="${cpath }">홈</a></p>
            <p><a href="${cpath }/myPage/password">내 정보</a></p>
            <p><a href="${cpath }/myPage/bookmark">북마크</a></p>
            <p><a href="${cpath }/myPage/myReply">댓글</a></p>
            <p><a href="${cpath }/support/QNA">고객센터</a></p>
        </div>
    <hr>
</article>
<section class="password">
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