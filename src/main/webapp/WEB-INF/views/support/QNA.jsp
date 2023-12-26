<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<%@ include file="sup_main.jsp" %>


<section class="qna" id="support">
	<fieldset>
		<table>
		  <tr>
		    <th>아이디(선택)</th>
		    <td><input placeholder="현재 사용중인 아이디를 입력해주세요"></td>
		  </tr>
		  <tr>
		    <th>이메일(필수)</th>
		    <td><input placeholder="연락 받으실 이메일 주소를 입력해주세요"></td>
		  </tr>
		  <tr>
		    <th>문의 내용</th>
		    <td><textarea placeholder="구체적인 내용을 기재해 주세요." id="qna_contents"></textarea></td>
		  </tr>
		  <tr>
		    <th>첨부파일</th>
		    <td class="input">
		    	<input type="file" id="file_input">
		    </td>
		  </tr>
		</table>
		<div class="qna_button"><a>이메일 보내기</a></div>
	</fieldset>
</section>
<%@ include file="../footer.jsp" %>