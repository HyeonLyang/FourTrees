<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<%@ include file="sup_main.jsp" %>

<section class="notice" id="support">
<<<<<<< HEAD
	<h1>FAQ</h1>
=======
	<h1 align="center">FAQ</h1>
>>>>>>> origin/master
	<div class="btn">
		<a href="#"><button>관리자용 글 쓰기</button></a>
	</div>
	<div class="notice_con">
<<<<<<< HEAD
		<table>
			<tr>
				<th>번호</th>
				<th>글 제목</th>
				<th>게시일</th>
				<th>수정(권한)</th>
			</tr>
			<tr>
				<td>1</td>
				<td>자주 묻는 질문 게시판입니다</td>
				<td>2023-12-16</td>
				<td>EDIT</td>
			</tr>
		</table>
=======
		<hr>
		<c:forEach var="row" items="${list }">
			<ul>
				<li>${row.idx }</li>
				<li>
					<p><a href="#">${row.title }</a></p>
					<p class="date">${row.write_date }</p>
				</li>
			<c:if test="${user.status == '관리자' }">
				<li id="notice_btns">수정/제거</li>
			</c:if>
			</ul>
		<hr>
		</c:forEach>
>>>>>>> origin/master
		<div class="notice_paging">
			<ul>
				<c:set var="noPath" value="${cpath }/support/notice"></c:set>
				<c:if test="${p.prev }">			
					<li><a href="${noPath }?page=${p.begin - 1 }">이전</a></li>
				</c:if>
					
				<c:forEach var="i" begin="${p.begin }" end="${p.end }">
					<li><a href="${noPath }?page=${i }">${i }</a></li>
				</c:forEach>
					
				<c:if test="${p.next }">			
					<li><a href="${noPath }?page=${p.end + 1 }">다음</a></li>
				</c:if>
			</ul>
		</div>
	</div>
</section>

<%@ include file="../footer.jsp" %>