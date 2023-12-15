<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<link href="${cpath }/resources/css/rank_css/rank_category_style.css" rel="stylesheet">
<c:set var="star_rating" value="${res.score / 5 * 100 }"/>
	<!-- css 폴더안에 정리해주세요 -->
<c:set var="cate" value="${res_list[0].category }"/>
<section class="rank_category">

	<p class="btns">
		<c:forEach var="category" items="${cate_list }">
			<button>${category.name }</button>
		</c:forEach>
	</p>
	
	<h1 class="rank_category_title">${cate } 맛집 TOP10</h1>
	
	<section class="rank_category_main">
		
		<ol class="rank_category_board">
		
		</ol>
		<p class="rank_category_toArea" OnClick="location.href ='#'" style="cursor:pointer">내 지역의 ${cate } 맛집 찾으러 가기 →</p>
	</section>
	
</section>	

<script type="text/javascript" src="${cpath}/resources/js/categoryRanking.js"></script>

<script>
	var star_rating = ${star_rating};
	var cpath = ${cpath};
</script>	

</body>
</html>