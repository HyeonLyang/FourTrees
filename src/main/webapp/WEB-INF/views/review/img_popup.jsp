<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
body {
	width: 1000px;
	margin: 0 auto;
}
.img_popup_collection {
	border: 1px solid black;	
	width: 100%;
	height: 100px;	
	display: flex;
	flex-flow : wrap;
}
.contents {		
}
.contents img {
	width: 164px;
	height: 164px;
	margin-right: 2px;
}
</style>
<title>popup</title>
</head>
<body>
	<h2>갤러리</h2>
	<hr>
	
	<h4>이미지 1,313</h4>
	
	<div class="img_popup_collection">
		<c:forEach var="i" begin="1" end="24">	
			<div class="contents">			
				<img src="${cpath }/resources/img/review/중식.jfif">
			</div>
		</c:forEach>
	</div>
</body>
</html>