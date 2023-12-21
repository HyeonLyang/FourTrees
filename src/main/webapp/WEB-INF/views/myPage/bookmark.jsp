<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="myPage_main.jsp" %>
	<div class="profile_modify">
		<a href="${cpath }/myPage/password">			
			<img src="${cpath }/resources/img/review/review_write.png" 
			style="width: 70px;"><br>
			<span style="font-size: 15px">회원정보수정</span>
		</a>
	</div>
</div>	
    <div class="headline">
    	 <p><a href="${cpath }">홈</a></p>         
         <p><a href="${cpath }/myPage/bookmark" style="color: #ff7f50;">북마크</a></p>
         <p><a href="${cpath }/myPage/myReply">댓글</a></p>
         <p><a href="${cpath }/support/sup_main">고객센터</a></p>
         <c:if test="${user.status == '관리자' }">
         	<p><a href="${cpath }/myPage/admin">회원 관리</a></p>
         </c:if>
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

