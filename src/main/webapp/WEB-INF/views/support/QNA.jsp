<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ include file="sup_main.jsp" %>

<div class="sqare3">
</div>
<section class="qna" id="support">
	<fieldset>
		<table>
		  <tr>
		    <th>아이디(선택)</th>
		    <td><input placeholder="현재 사용중인 아이디를 입력해주세요"></td>
		  </tr>
		  <tr>
		    <th>이메일 주소(필수)</th>
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
		    	<label for="file_input" class="file_label">파일 선택</label>
		    </td>
		  </tr>
		</table>
		<div class="qna_button">
			<button>입력완료</button>
		</div>
	</fieldset>

</section>
<%@ include file="../footer.jsp" %>