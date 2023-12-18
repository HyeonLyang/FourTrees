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
         <p><a href="${cpath }/myPage/bookmark">북마크</a></p>
         <p><a href="${cpath }/myPage/myReply" style="color: #ff7f50;">댓글</a></p>
         <p><a href="${cpath }/support/QNA">고객센터</a></p>
         <c:if test="${user.status == '관리자' }">
         	<p><a href="${cpath }/myPage/admin">회원 관리</a></p>
         </c:if>
    </div>

	<h3>리뷰한 맛집</h3>
	<table class="boards">
		<tr>		
			<th>댓글 번호</th>			
			<th>내용</th>
			<th>가게명</th>
			<th>작성일</th>		
		</tr>
		<c:forEach var="row" items="${list }">
			<tr>			
				<th>${row.idx }</th>
				<td>${row.content }</td>						
				<td>${row.res_name }</td>
				<td>${row.write_date }</td>
			</tr>
		</c:forEach>
	</table>
</article>

<%@ include file="../footer.jsp" %>
</body>
</html>