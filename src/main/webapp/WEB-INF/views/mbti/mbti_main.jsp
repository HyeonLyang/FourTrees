<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>

<link rel="stylesheet" href="${cpath }/resources/css/mbti/mbti.css">

<section class="mbti_main">
	<div>
		<p id="mbti_test">
			<a href="${cpath }/support/sup_main"><spring:message code="mbti1" text="default text" /></a>
		</p>
		
		<div class="mbti_result"> 	
			<table>
				<tr>
					<td><a href="${cpath }/mbti/test/istj"><img src="${cpath }/resources/img/mbti/icon_1.jpg"></a></td>
					<td><a href="${cpath }/mbti/test/isfj"><img src="${cpath }/resources/img/mbti/icon_2.jpg"></a></td>
					<td><a href="${cpath }/mbti/test/infj"><img src="${cpath }/resources/img/mbti/icon_3.jpg"></a></td>
					<td><a href="${cpath }/mbti/test/intj"><img src="${cpath }/resources/img/mbti/icon_4.jpg"></a></td>
				</tr>
				<tr>
					<td><a href="${cpath }/mbti/test/istp"><img src="${cpath }/resources/img/mbti/icon_5.jpg"></a></td>
					<td><a href="${cpath }/mbti/test/isfp"><img src="${cpath }/resources/img/mbti/icon_6.jpg"></a></td>
					<td><a href="${cpath }/mbti/test/infp"><img src="${cpath }/resources/img/mbti/icon_7.jpg"></a></td>
					<td><a href="${cpath }/mbti/test/intp"><img src="${cpath }/resources/img/mbti/icon_8.jpg"></a></td>
				</tr>
				<tr>
					<td><a href="${cpath }/mbti/test/estp"><img src="${cpath }/resources/img/mbti/icon_9.jpg"></a></td>
					<td><a href="${cpath }/mbti/test/esfp"><img src="${cpath }/resources/img/mbti/icon_10.jpg"></a></td>
					<td><a href="${cpath }/mbti/test/enfp"><img src="${cpath }/resources/img/mbti/icon_11.jpg"></a></td>
					<td><a href="${cpath }/mbti/test/entp"><img src="${cpath }/resources/img/mbti/icon_12.jpg"></a></td>
				</tr>
				<tr>
					<td><a href="${cpath }/mbti/test/estj"><img src="${cpath }/resources/img/mbti/icon_13.jpg"></a></td>
					<td><a href="${cpath }/mbti/test/esfj"><img src="${cpath }/resources/img/mbti/icon_14.jpg"></a></td>
					<td><a href="${cpath }/mbti/test/enfj"><img src="${cpath }/resources/img/mbti/icon_15.jpg"></a></td>
					<td><a href="${cpath }/mbti/test/entj"><img src="${cpath }/resources/img/mbti/icon_16.jpg"></a></td>
				</tr>
			</table>
		</div>
		<ul>
				<li><a href="${cpath }/mbti/mbti_research"><spring:message code="mbti2" text="default text" /></a></li>
				<%-- <li><a href="${cpath }/support/FAQ">다른 유형 결과 보기</a></li>--%>
		</ul>
	</div>
</section>

</body>
</html>
