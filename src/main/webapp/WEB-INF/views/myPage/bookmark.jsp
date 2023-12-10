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
         <p><a href="${cpath }/myPage/bookmark" style="color: #ff7f50;">북마크</a></p>
         <p><a href="${cpath }/myPage/myReply">댓글</a></p>
         <p><a href="${cpath }/support/QNA">고객센터</a></p>
    </div>
    
	<h3>북마크</h3>
	<table class="boards">
		<tr>
			<th>삭제</th>
			<th>번호</th>
			<th>가게명</th>
			<th>주소</th>			
		</tr>
		<c:forEach var="row" begin="1001" end="1010">
			<tr>
				<th><input name="" type="checkbox" style="width: auto;"></th>
				<th>${row }</th>
				<td>루비정</td>
				<td>서울 동작구 한남대로 120번길</td>			
			</tr>
		</c:forEach>
	</table>
</article>

<%@ include file="../footer.jsp" %>

