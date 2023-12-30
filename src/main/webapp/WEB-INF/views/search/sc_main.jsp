<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<link rel="stylesheet" href="${cpath }/resources/css/search_css/sc_main.css">

<c:set var="imgPath" value="${cpath }/resources/img/search"></c:set>
<c:set var="moveDetail" value="${cpath }/search/sc_detail?address"></c:set>
<c:set var="moveDetail2" value="${cpath }/search/sc_detail?address=서울&category"></c:set>

<section class="sc_main">
	<div class="sc_back">
		<div  class="sc_title">
			<div>
				<h1><spring:message code="sc.main1" text="default text" /></h1>
			</div>
		</div>
		<div class="sc_area">
			<div>
				<h3><a href="${moveDetail }=서울"><spring:message code="sc.main2" text="default text" /></a></h3>
				<hr>
			</div>
			<div>
			    <ul class="sc_img1">
			        <li class="city-item">
			            <a href="${moveDetail }=서울">
			                <img src="${imgPath }/back1.png">
			                <span class="city-text"><spring:message code="search.lo1" text="default text" /></span>
			            </a>
			        </li>
			        <li class="city-item">
			            <a href="${moveDetail }=부산">
			                <img src="${imgPath }/back2.png">
			                <span class="city-text"><spring:message code="search.lo2" text="default text" /></span>
			            </a>
			        </li>
			    </ul>
			</div>
			<div>
			    <ul class="sc_img2">
			        <li class="city-item">
			            <a href="${moveDetail }=제주">
			                <img src="${imgPath }/back3.png">
			                <span class="city-text"><spring:message code="search.lo3" text="default text" /></span>
			            </a>
			        </li>
			        <li class="city-item">
			            <a href="${moveDetail }=강원도">
			                <img src="${imgPath }/back4.png">
			                <span class="city-text"><spring:message code="search.lo4" text="default text" /></span>
			            </a>
			        </li>
			        <li class="city-item">
			            <a href="${moveDetail }=경주">
			                <img src="${imgPath }/back5.png">
			                <span class="city-text"><spring:message code="search.lo5" text="default text" /></span>
			            </a>
			        </li>
			    </ul>
			</div>
		</div>
		<div class="sc_area" id="sc_cate">
			<div>
				<h3><a href="${moveDetail2 }=백반"><spring:message code="sc.main3" text="default text" /></a></h3>
				<hr>
			</div>
			<div>
			    <ul class="sc_img2">
			        <li class="city-item">
			            <a href="${moveDetail }=백반">
			                <img src="${imgPath }/food1.png">
			                <span class="city-text2"><spring:message code="search.food1" text="default text" /></span>
			            </a>
			        </li>
			        <li class="city-item">
			            <a href="${moveDetail }=고기">
			                <img src="${imgPath }/food2.png">
			                <span class="city-text"><spring:message code="search.food2" text="default text" /></span>
			            </a>
			        </li>
			        <li class="city-item">
			            <a href="${moveDetail }=찌개">
			                <img src="${imgPath }/food3.png">
			                <span class="city-text"><spring:message code="search.food3" text="default text" /></span>
			            </a>
			        </li>
			    </ul>
			</div>
			<div>
			    <ul class="sc_img2">
			        <li class="city-item">
			            <a href="${moveDetail }=양식">
			                <img src="${imgPath }/food4.png">
			                <span class="city-text"><spring:message code="search.food4" text="default text" /></span>
			            </a>
			        </li>
			        <li class="city-item">
			            <a href="${moveDetail }=패스트푸드">
			                <img src="${imgPath }/food5.png">
			                <span class="city-text2"><spring:message code="search.food5" text="default text" /></span>
			            </a>
			        </li>
			        <li class="city-item">
			            <a href="${moveDetail }=분식">
			                <img src="${imgPath }/food6.png">
			                <span class="city-text"><spring:message code="search.food6" text="default text" /></span>
			            </a>
			        </li>
			    </ul>
			</div>
			<div>
			    <ul class="sc_img2">
			        <li class="city-item">
			            <a href="${moveDetail }=치킨">
			                <img src="${imgPath }/food7.png">
			                <span class="city-text"><spring:message code="search.food7" text="default text" /></span>
			            </a>
			        </li>
			        <li class="city-item">
			            <a href="${moveDetail }=일식">
			                <img src="${imgPath }/food8.png">
			                <span class="city-text"><spring:message code="search.food8" text="default text" /></span>
			            </a>
			        </li>
			        <li class="city-item">
			            <a href="${moveDetail }=중식">
			                <img src="${imgPath }/food9.png">
			                <span class="city-text"><spring:message code="search.food9" text="default text" /></span>
			            </a>
			        </li>
			    </ul>
			</div>
			<div>
			    <ul class="sc_img2">
			        <li class="city-item">
			            <a href="${moveDetail }=카페">
			                <img src="${imgPath }/food10.png">
			                <span class="city-text"><spring:message code="search.food10" text="default text" /></span>
			            </a>
			        </li>
			        <li class="city-item">
			            <a href="${moveDetail }=디저트">
			                <img src="${imgPath }/food11.png">
			                <span class="city-text"><spring:message code="search.food11" text="default text" /></span>
			            </a>
			        </li>
			        <li class="city-item">
			            <a href="${moveDetail }=술집">
			                <img src="${imgPath }/food12.png">
			                <span class="city-text"><spring:message code="search.food12" text="default text" /></span>
			            </a>
			        </li>
			    </ul>
			</div>
		</div>
	</div>
	
	<div class="ad_back">
		<div>
			<ul class="sc_ad">
				<li><img alt="" src="${imgPath }/광고1.png"></li>
				<li><img alt="" src="${imgPath }/광고2.png"></li>
			</ul>
		</div>
	</div>


</section>

<%@ include file="../footer.jsp" %>