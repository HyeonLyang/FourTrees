<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<link rel="stylesheet" href="${cpath }/resources/css/home.css">
<script src="${cpath }/resources/js/home.js"></script>
<section class="home" >
	<div class="home_main">
		<img src="${cpath }/resources/img/main.jpg">
	</div>
<section class="content">
     <div class="left">
           <div class="left_in">
               <div class="left_in_box">
                   <p></p>
                   <h3>Editor's pick</h3>
                   <p>“ 음식 마니아들이 선택한 최고의 초이스 ”</p>
                   <div class="left_in_box_middle">
                       크레이지카츠
                   </div>
                   <span>#돈까스 #마포구 #합정역 #BEST</span>
                   <em>바삭함과 육즙이 좔좔흐르는 합정 돈카츠맛집</em>
               </div>
        </div>
    </div>
    <div class="right">
    	<img src="${cpath }/resources/img/crazy1.jpg">
    </div>
</section>

<section class="category">
    <div class="inner">
    	<div class="category_innerText">
	        <h3>Category</h3>
	        <p>"분류 방법을 선택해 주세요."</p>
	        <p>　</p>
	        <p>　</p>
    	</div>
		<div class="menu">
		    <div class="cate1">
		        <img src="${cpath }/resources/img/c_location.jpg">
	        	<a href="#" style="background-image: 
	        		url('${cpath}/resources/img/opacity.png');">
		        	<span data-hover="BREAD" 
		        	style="background: 
		        	url('${cpath}/resources/img/arrow.png') 
		        	right center no-repeat;">
		        	장소로 분류
		        	</span>
	        	</a>
		    </div>
		    
	    <div class="cate23">	
		    <div class="cate2">
		        <img src="${cpath }/resources/img/c_rank.jpg">
		        <a href="#" style="background-image: 
		        	url('${cpath}/resources/img/opacity.png');">
			        <span data-hover="BREAD"
			        style="background: 
		        	url('${cpath}/resources/img/arrow.png') 
		        	right center no-repeat;">랭킹으로 검색
	        		</span>
	        	</a>
		    </div>
		    <div class="cate3">
		        <img src="${cpath }/resources/img/c_thema.jpg">
		        <a href="#" style="background-image: 
		        	url('${cpath}/resources/img/opacity.png');">
			        <span data-hover="BREAD"
			        style="background: 
		        	url('${cpath}/resources/img/arrow.png') 
		        	right center no-repeat;">테마별로 검색
	        	</span>
	        	</a>
		    </div>
	    </div>
		    
		    <div class="cate4">
		        <img src="${cpath }/resources/img/c_menu.jpg">
			        <a href="#" style="background-image: 
		        		url('${cpath}/resources/img/opacity.png');">
				        <span data-hover="BREAD"
				        style="background: 
			        	url('${cpath}/resources/img/arrow.png') 
			        	right center no-repeat;">메뉴별로 검색
			        	</span>
		        	</a>
		    </div>
		</div>
    </div>
</section>
</section>

<%@ include file="footer.jsp" %>


