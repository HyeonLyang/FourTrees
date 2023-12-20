<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<link href="${cpath }/resources/css/photo_css/photo_main_style.css" rel="stylesheet">
<!-- css 폴더안에 정리해주세요 -->


<section class="photo_main">
	
	<section>
		<c:forEach var="photo" items="${img_list }">
			<img src="${cpath }/img/${photo.res_name }/${photo.img_path }">
		</c:forEach>
	</section>
	
</section>
	
</body>
</html>