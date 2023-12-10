<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<style>
.sc_category {
	box-sizing: border-box;
	padding: 10px;
	display: flex;
	flex-direction: column;
	justify-content: flex-start;
}
.sc_category select{
	width: 200px;
	height: 40px;
	overflow: hidden;
}
.sc_category .select_2{
	width: 400px;
}

.sc_category button {
	width: 70px;
	height: 40px;
}
.sc_category div {
	width: 100%;
}
.sc_category table{
	width: 100%;
	border-collapse: collapse;
	margin: 10px;
	box-sizing: border-box;
	text-align: center;
}

.sc_category td {
	border: 1px solid;
}
.sc_category img{
	width: 200px;
	height: 200px;
	
}
</style>

<c:set var="imgPath" value="${cpath }/resources/img/search"></c:set>
<section class="sc_category">
	<div>
		<h4>카테고리별 모아보기</h4>
		<select class="select_1">
			<optgroup label="---지역---"></optgroup>
			<option>서울</option>
			<option>부산</option>
			<option>제주</option>
			<option>강원</option>
		</select>
		<select class="select_2">
			<optgroup label="---Category---"></optgroup>
			<option>고기·구이</option>
			<option>찜·탕·찌개</option>
			<option>카페·디저트</option>
			<option>돈까스·회·일식</option>
			<option>양식</option>
			<option>치킨</option>
			<option>분식</option>
			<option>백반·죽·국수</option>
			<option>아시안</option>
			<option>중식</option>
			<option>피자</option>
			<option>족발·보쌈</option>
			<option>도시락</option>
			<option>패스트푸드</option>
		</select>
		<button>검색</button>	
	</div>
	<div>
		<table>
		<tr>
			<td><img src="${imgPath }/남원통닭.jpg"></td>
			<td><img src="${imgPath }/남원통닭.jpg"></td>
			<td><img src="${imgPath }/남원통닭.jpg"></td>
			<td><img src="${imgPath }/남원통닭.jpg"></td>
		</tr>
		<tr>
			<td><img src="${imgPath }/독립밀방 청량리.jpg"></td>
			<td><img src="${imgPath }/독립밀방 청량리.jpg"></td>
			<td><img src="${imgPath }/독립밀방 청량리.jpg"></td>
			<td><img src="${imgPath }/독립밀방 청량리.jpg"></td>
		</tr>
		<tr>
			<td><img src="${imgPath }/레알라면.png"></td>
			<td><img src="${imgPath }/서울뼈구이매운족발.jpg"></td>
			<td><img src="${imgPath }/서파넓적갈비 용두점.jpg"></td>
			<td><img src="${imgPath }/어머니대성집.jpg"></td>
		</tr>
		<tr>
			<td><img src="${imgPath }/영화장.jpg"></td>
			<td><img src="${imgPath }/오마카세 오사이초밥 고려대역점.jpg"></td>
			<td><img src="${imgPath }/일미간장게장.jpg"></td>
			<td><img src="${imgPath }/장안동 먹깨비 간장게장 해물아구찜.jpg"></td>
		</tr>
		<tr>
			<td><img src="${imgPath }/READSTREET COFFEE.jpg"></td>
			<td><img src="${imgPath }/독립밀방 청량리.jpg"></td>
			<td><img src="${imgPath }/독립밀방 청량리.jpg"></td>
			<td><img src="${imgPath }/독립밀방 청량리.jpg"></td>
		</tr>
		<tr>
			<td><img src="${imgPath }/독립밀방 청량리.jpg"></td>
			<td><img src="${imgPath }/독립밀방 청량리.jpg"></td>
			<td><img src="${imgPath }/독립밀방 청량리.jpg"></td>
			<td><img src="${imgPath }/독립밀방 청량리.jpg"></td>
		</tr>
		<tr>
			<td><img src="${imgPath }/독립밀방 청량리.jpg"></td>
			<td><img src="${imgPath }/독립밀방 청량리.jpg"></td>
			<td><img src="${imgPath }/독립밀방 청량리.jpg"></td>
			<td><img src="${imgPath }/독립밀방 청량리.jpg"></td>
		</tr>
		</table>
	</div>
</section>
</body>
</html>