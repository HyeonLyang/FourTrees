<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="${cpath }/resources/css/search_css/sc_detail.css">

<section class="sc_detail">

	<article class="de_left">
	<div class="de_option">
		<table>
			<tr>
				<td>지역, 장소</td>
				<% 
					String address = request.getParameter("address"); 
					if (address==null) {
						address = "서울";
					}
				%>
				<td><input value="<%=address %>" placeholder="지역, 장소"></td>
			</tr>
			<tr>
				<td>장르</td>
				<% 
					String category = request.getParameter("category"); 
					if (category==null) {
						category = "백반";
					} 
				%>
				<td><input value="<%=category %>" placeholder="백반,죽,국수"></td>
			</tr>
			<tr>
				<td>가격대</td>
				<td> $0 <input type="range"> $1,000</td>
			</tr>
			<tr>
				<td colspan="2"><button>상세검색</button>⬆️⬇️ <button>정렬</button>표준</td>
			</tr>
		</table>
	</div>
	<div class="sc_list">
		<table>
			<c:forEach var="row" items="${list }">
				<tr>
				<td>${row.idx }</td>
				<td>${row.name }</td>
				<td>${row.address }</td>
				</tr>
			</c:forEach>
		</table>
	</div>

	<div class="sc_paging">
		<ul>
			<li>1</li>
			<li>2</li>
			<li>3</li>
			<li>4</li>
			<li>5</li>
			<li>다음></li>
		</ul>
		
		<p>1-20 of 5106</p>
	</div>
	</article>
	
	<article class="de_right">
		<img src="${cpath }/resources/img/search/구글맵예시.png">
	</article>
	

</section>
</body>
</html>