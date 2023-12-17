<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<%@ include file="sup_main.jsp" %>


<section class="notice" id="support">
	<h1>NOTICE</h1>
	<div class="btn">
		<a href="#"><button>관리자용 글 쓰기</button></a>
	</div>
	<div class="notice_con">
		<table>
			<tr>
				<th>게시자</th>
				<th>번호</th>
				<th colspan="2">글 제목</th>
				<th>게시일</th>
				<th>수정(권한)</th>
			</tr>
			<c:forEach var="row" items="${notices }">
			<tr>
				<td>
					<img id="notice_face" src="${cpath }/resources/img/support/기본프사.png">
				</td>
				<td id="notice_idx">${row.idx }</td>
				<td colspan="2">${row.title }</td>
				<td>${row.write_date }</td>
				<td id="notice_btns">수정/제거</td>
			</tr>
			
			</c:forEach>
		</table>
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