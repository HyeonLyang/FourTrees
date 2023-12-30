<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<%@ include file="sup_main.jsp" %>


<section class="notice" id="support">
	<h1 style="text-align: center;	">NOTICE</h1>
	<div class="btn">
		<a href="#"><button><spring:message code="support.main1" text="default text" /></button></a>
	</div>
	<div class="notice_con">
		<hr>
		<c:forEach var="row" items="${list }">
			<ul>
				<li>
					<p><a href="#">${row.title }</a></p>
					<p class="date">${row.write_date }</p>
				</li>
			<c:if test="${user.status == '관리자' }">
				<li id="notice_btns"><spring:message code="support.main2" text="default text" /></li>
			</c:if>
			</ul>
		<hr>
		</c:forEach>
		<div class="notice_paging">
			<ul>
				<c:set var="noPath" value="${cpath }/support/notice"></c:set>
				<c:if test="${p.prev }">			
					<li><a href="${noPath }?page=${p.begin - 1 }"><spring:message code="support.main3" text="default text" /></a></li>
				</c:if>
					
				<c:forEach var="i" begin="${p.begin }" end="${p.end }">
					<li><a href="${noPath }?page=${i }">${i }</a></li>
				</c:forEach>
					
				<c:if test="${p.next }">			
					<li><a href="${noPath }?page=${p.end + 1 }"><spring:message code="support.main4" text="default text" /></a></li>
				</c:if>
			</ul>
		</div>
	</div>
</section>


<%@ include file="../footer.jsp" %>