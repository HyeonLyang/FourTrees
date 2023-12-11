<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="${cpath }/resources/css/mbti/mbti.css">

<section class="mbti_main">
	<div>
		<p id="mbti_test">
			<a href="${cpath }/support/sup_main">음식으로 확인하는 MBTI</a>
		</p>
		
		<div class="mbti_result"> 	
			<table>
				<tr>
					<td><a href="${cpath }/mbti/istj"><img src="${cpath }/resources/img/mbti/icon_1.jpg"></a></td>
					<td><a href="${cpath }/mbti/isfj"><img src="${cpath }/resources/img/mbti/icon_2.jpg"></a></td>
					<td><a href="${cpath }/mbti/infj"><img src="${cpath }/resources/img/mbti/icon_3.jpg"></a></td>
					<td><a href="${cpath }/mbti/intj"><img src="${cpath }/resources/img/mbti/icon_4.jpg"></a></td>
				</tr>
				<tr>
					<td><a href="${cpath }/mbti/istp"><img src="${cpath }/resources/img/mbti/icon_5.jpg"></a></td>
					<td><a href="${cpath }/mbti/isfp"><img src="${cpath }/resources/img/mbti/icon_6.jpg"></a></td>
					<td><a href="${cpath }/mbti/infp"><img src="${cpath }/resources/img/mbti/icon_7.jpg"></a></td>
					<td><a href="${cpath }/mbti/intp"><img src="${cpath }/resources/img/mbti/icon_8.jpg"></a></td>
				</tr>
				<tr>
					<td><a href="${cpath }/mbti/estp"><img src="${cpath }/resources/img/mbti/icon_9.jpg"></a></td>
					<td><a href="${cpath }/mbti/esfp"><img src="${cpath }/resources/img/mbti/icon_10.jpg"></a></td>
					<td><a href="${cpath }/mbti/enfp"><img src="${cpath }/resources/img/mbti/icon_11.jpg"></a></td>
					<td><a href="${cpath }/mbti/entp"><img src="${cpath }/resources/img/mbti/icon_12.jpg"></a></td>
				</tr>
				<tr>
					<td><a href="${cpath }/mbti/estj"><img src="${cpath }/resources/img/mbti/icon_13.jpg"></a></td>
					<td><a href="${cpath }/mbti/esfj"><img src="${cpath }/resources/img/mbti/icon_14.jpg"></a></td>
					<td><a href="${cpath }/mbti/enfj"><img src="${cpath }/resources/img/mbti/icon_15.jpg"></a></td>
					<td><a href="${cpath }/mbti/entj"><img src="${cpath }/resources/img/mbti/icon_16.jpg"></a></td>
				</tr>
			</table>
		</div>
		<ul>
				<li><a href="${cpath }/mbti/mbti_research">MBTI테스트 하러가기</a></li>
				<%-- <li><a href="${cpath }/support/FAQ">다른 유형 결과 보기</a></li>--%>
		</ul>
	</div>
</section>

</body>
</html>
