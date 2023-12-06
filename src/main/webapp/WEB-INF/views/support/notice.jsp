<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ include file="sup_main.jsp" %>


<section class="notice" id="support">

	<div class="notice_con">
		<table>
			<c:forEach var="row" items="${notices }">
			<tr>
				<td id="notice_idx">${row.idx }</td>
				<td colspan="2">${row.title }</td>
				<td>⬇️</td>
			</tr>
			<tr>
				<td>
					<img id="notice_face" src="${cpath }/resources/img/support/기본프사.png">
				</td>
				<td>${row.write_date }</td>
				<td id="notice_btns">수정/제거</td>
				<td></td>
			</tr>
			<tr>
				<td colspan="4">
					<textarea>${row.contents }</textarea>
				</td>
			</tr>
			</c:forEach>
		</table>
	</div>
</section>


<%@ include file="../footer.jsp" %>