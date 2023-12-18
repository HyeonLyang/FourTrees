<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<link rel="stylesheet" href="${cpath }/resources/css/account/myPage.css">
<article class="myPage_img">
	<h3>프로필 사진 수정</h3>
	
	<form method="POST" enctype="multipart/form-data">	
		<table class="board_img">
			<tr style="height: 100px;">
				<th>프로필사진</th>
				<td>	
					<img src="${cpath }/resources/img/account/${user.img}"
					style="width: 70px; height: 70px; border-radius: 50px;"><br>			
					<input name="img_upload" type="file">
				</td>
			</tr>
			<tr>
				<th>별명</th>
				<td><input value="${user.nick }" readonly></td>
			</tr>
		</table>
	</form>
</article>
</body>
</html>