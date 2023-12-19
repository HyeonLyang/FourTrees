<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="myPage_main.jsp" %>
</div>
	<h3>여기는 관리자 전용입니다(회원 정보 삭제 가능)</h3>
	
	<div class="AccountManage">
		<table class="boards">	
			<tr>
				<th>ID</th>
				<th>닉네임</th>
				<th>이메일</th>
				<th>계정 권한</th>
				<th>생일</th>
				<th>전화번호</th>
				<th>가입일</th>
				<th>삭제</th>
			</tr>	
		<c:forEach var="row" items="${list }">
			<tr>
				<td>${row.userid }</td>
				<td>${row.nick }</td>
				<td>${row.email }</td>
				<td>${row.status }</td>
				<td>${row.birth }</td>
				<td>${row.phone }</td>
				<td>${row.join_date }</td>
				<c:if test="${row.status == '관리자' }">				
					<td>
						<button onclick="isAdmin()">클릭</button>
					</td>
				</c:if>
				<c:if test="${row.status == '게스트' }">				
					<td>
						<button onclick="isDelete(${row.idx },'${cpath }', '삭제')">클릭</button>
					</td>
				</c:if>
			</tr>
		</c:forEach>
		</table>
	</div>
</article>	
</body>
</html>