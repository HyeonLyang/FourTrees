<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<link rel="stylesheet" href="${cpath }/resources/css/account/myPage.css">
<article class="myPage_img">
	<h3><spring:message code="mypage.imgchange.title" text="default text" /></h3>
	
	<form method="POST" enctype="multipart/form-data">	
		<table class="board_img">
			<tr style="height: 100px;">
				<th><spring:message code="mypage.imgchange1" text="default text" /></th>
				<td>	
					<img src="${cpath }/img/account/${user.img}"
					style="width: 70px; height: 70px; border-radius: 50px;"><br>			
					<input name="img_upload" type="file">
				</td>
			</tr>
			<tr>
				<th><spring:message code="mypage.imgchange2" text="default text" /></th>
				<td><input name="nick" value="${user.nick }" readonly></td>
			</tr>
		</table>
		<button style="margin-top: 20px;"><spring:message code="mypage.imgchange3" text="default text" /></button>		
	</form>
</article>
</body>
</html>