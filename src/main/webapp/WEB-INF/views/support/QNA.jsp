<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<%@ include file="sup_main.jsp" %>


<section class="qna" id="support">
	<fieldset>
		<table>
		  <tr>
		    <th><spring:message code="support.main12" text="default text" /></th>
		    <td><input placeholder="<spring:message code="support.main13" text="default text" />"></td>
		  </tr>
		  <tr>
		    <th><spring:message code="support.main14" text="default text" /></th>
		    <td><input placeholder="<spring:message code="support.main15" text="default text" />"></td>
		  </tr>
		  <tr>
		    <th><spring:message code="support.main16" text="default text" /></th>
		    <td><textarea placeholder="<spring:message code="support.main17" text="default text" />" id="qna_contents"></textarea></td>
		  </tr>
		  <tr>
		    <th><spring:message code="support.main18" text="default text" /></th>
		    <td class="input">
		    	<input type="file" id="file_input">
		    </td>
		  </tr>
		</table>
		<div class="qna_button"><a><spring:message code="support.main19" text="default text" /></a></div>
	</fieldset>
</section>
<%@ include file="../footer.jsp" %>