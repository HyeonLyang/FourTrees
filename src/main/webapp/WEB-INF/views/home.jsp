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
                   <p><spring:message code="section1-1" text="default text" /></p>
                   <div class="left_in_box_middle">
                       <spring:message code="section1-2" text="default text" />
                   </div>
                   <span>#<spring:message code="section1-3-1" text="default text" /> #<spring:message code="section1-3-2" text="default text" /> #<spring:message code="section1-3-3" text="default text" /> #BEST</span>
                   <em><spring:message code="section1-4" text="default text" /></em>
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
	        <p><spring:message code="section2" text="default text" /></p>
	        <p>　</p>
	        <p>　</p>
    	</div>
		<div class="menu">
		    <div class="cate1">
		        <img src="${cpath }/resources/img/c_location.jpg">
	        	<a href="${cpath }/search/sc_main" style="background-image: 
	        		url('${cpath}/resources/img/opacity.png');">
		        	<span data-hover="BREAD" 
		        	style="background: 
		        	url('${cpath}/resources/img/arrow.png') 
		        	right center no-repeat;">
		        	<spring:message code="section2-1" text="default text" />
		        	</span>
	        	</a>
		    </div>
		    
	    <div class="cate2">	
		    <div class="cate2">
		        <img src="${cpath }/resources/img/c_rank.jpg">
		        <a href="${cpath }/rank/rank_main" style="background-image: 
		        	url('${cpath}/resources/img/opacity.png');">
			        <span data-hover="BREAD"
			        style="background: 
		        	url('${cpath}/resources/img/arrow.png') 
		        	right center no-repeat;"><spring:message code="section2-2" text="default text" />
	        		</span>
	        	</a>
		    </div>
		    <div class="cate3">
		        <img src="${cpath }/resources/img/header/mbti.jpg">
		        <a href="${cpath }/mbti/mbti_main" style="background-image: 
		        	url('${cpath}/resources/img/opacity.png');">
			        <span data-hover="BREAD"
			        style="background: 
		        	url('${cpath}/resources/img/arrow.png') 
		        	right center no-repeat;"><spring:message code="section2-3" text="default text" />
	        	</span>
	        	</a>
		    </div>
	    </div>
		    
		    <div class="cate4">
		        <img src="${cpath }/resources/img/c_menu.jpg">
			        <a href="${cpath }/photo/photo_main" style="background-image: 
		        		url('${cpath}/resources/img/opacity.png');">
				        <span data-hover="BREAD"
				        style="background: 
			        	url('${cpath}/resources/img/arrow.png') 
			        	right center no-repeat;"><spring:message code="section2-4" text="default text" />	
			        	</span>
		        	</a>
		    </div>
		</div>
    </div>
</section>
</section>

<%@ include file="footer.jsp" %>


