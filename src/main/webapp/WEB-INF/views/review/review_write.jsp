<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="${cpath }/resources/css/review.css">
<section class="review_write_main">
	<form class="review_write_write" method="POST" enctype="multipart/form-data">
		<table class="review_table">
			<tr>
				<th><label for="writer">작성자</label></th>
				<td><input name="writer" id="writer" required></td>				
			</tr>
			<tr>
				<th><label for="visit_date">방문일</label></th>				
				<td><input name="visit_date" type="date" required></td>				
			</tr>
			<tr>
				<th><label for="score">별점</label></th>				
				<td><input name="score" type="number" required></td>				
			</tr>						
			<tr>
				<td colspan="2"><textarea name="content"></textarea></td>
			</tr>
			<tr>
				<th>음식 사진</th>
				<td><input name="upload" type="file"></td>
			</tr>
		</table>
		
		<button>작성</button>
	</form>
</section>
</body>
</html>