<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<link rel="stylesheet" href="${cpath }/resources/css/account/myPage.css">
<!-- 마이페이지 css 폴더로 보냈습니다 -->
<article class="myPage_art">
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
         <p><a href="${cpath }/myPage/myReply" style="color: #ff7f50;">댓글</a></p>
         <p><a href="${cpath }/support/QNA">고객센터</a></p>
    </div>

	<h3>리뷰한 맛집</h3>
	<table class="boards">
		<tr>		
			<th>댓글 번호</th>
			<th>제목</th>
			<th>내용</th>
			<th>가게명</th>
			<th>작성일</th>		
		</tr>
		<c:forEach var="row" begin="1001" end="1010">
			<tr>			
				<th>${row }</th>
				<td>이 집을 추천합니다</td>
				<td>회가 싱싱하고 여러 밑반찬들이 다양해서 좋았어요</td>			
				<td>루비정</td>
				<td>2023-05-10</td>
			</tr>
		</c:forEach>
	</table>
</article>

<%@ include file="../footer.jsp" %>
</body>
</html>