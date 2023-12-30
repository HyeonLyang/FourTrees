<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>

<link rel="stylesheet" href="${cpath }/resources/css/mbti/mbti.css">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MBTI 결과</title>
</head>
    <div class="mbti-op">
	    </div>
<section class="search_main">
   <h1><img src="${cpath }/resources/img/mbti/mbti.png"><spring:message code="mbti.test0" text="default text" /></h1>
    <div class="mbti-con">
    <div class="mbti-move">
    <form id="mbtiForm">
	    <div>
	        <label for="EI check1"><spring:message code="mbti.test1" text="default text" /></label>
	        <label><input type="radio" name="q1" value="E" class="mb"> <spring:message code="mbti.test.yes" text="default text" /></label>
	        <label><input type="radio" name="q1" value="I" class="mb"> <spring:message code="mbti.test.no" text="default text" /></label>
	        <br>
	    </div>
	    
		<div>
	        <label for="EI check2"><spring:message code="mbti.test2" text="default text" /></label>
	        <label><input type="radio" name="q2" value="I" class="mb"> <spring:message code="mbti.test.yes" text="default text" /></label>
	        <label><input type="radio" name="q2" value="E" class="mb"> <spring:message code="mbti.test.no" text="default text" /></label>
	        <br>
		</div>
		
		<div>
	        <label for="EI check3"><spring:message code="mbti.test3" text="default text" /></label>
	        <label><input type="radio" name="q3" value="E" class="mb"> <spring:message code="mbti.test.yes" text="default text" /></label>
	        <label><input type="radio" name="q3" value="I" class="mb"> <spring:message code="mbti.test.no" text="default text" /></label>
        <br>
		</div>
		
		<div>
	        <label for="SN check1"><spring:message code="mbti.test4" text="default text" /></label>
	        <label><input type="radio" name="q4" value="N" class="mb"> <spring:message code="mbti.test.yes" text="default text" /></label>
	        <label><input type="radio" name="q4" value="S" class="mb"> <spring:message code="mbti.test.no" text="default text" /></label>
        <br>
        </div>
		
		<div>
	        <label for="SN check2"><spring:message code="mbti.test5" text="default text" /></label>
	        <label><input type="radio" name="q5" value="N" class="mb"> <spring:message code="mbti.test.yes" text="default text" /></label>
	        <label><input type="radio" name="q5" value="S" class="mb"> <spring:message code="mbti.test.no" text="default text" /></label>
        <br>
        </div>
        
		
		<div>
	        <label for="SN check3"><spring:message code="mbti.test6" text="default text" /></label>
	        <label><input type="radio" name="q6" value="N" class="mb"> <spring:message code="mbti.test.yes" text="default text" /></label>
	        <label><input type="radio" name="q6" value="S" class="mb"> <spring:message code="mbti.test.no" text="default text" /></label>
        <br>
        </div>
        
		<div>
	        <label for="TF check1"><spring:message code="mbti.test7" text="default text" /></label>
	        <label><input type="radio" name="q7" value="T" class="mb"> <spring:message code="mbti.test.yes" text="default text" /></label>
	        <label><input type="radio" name="q7" value="F" class="mb"> <spring:message code="mbti.test.no" text="default text" /></label>
        <br>
        </div>
        
		<div>
	        <label for="TF check2"><spring:message code="mbti.test8" text="default text" /></label>
	        <label><input type="radio" name="q8" value="T" class="mb"> <spring:message code="mbti.test.yes" text="default text" /></label>
	        <label><input type="radio" name="q8" value="F" class="mb"> <spring:message code="mbti.test.no" text="default text" /></label>
        <br>
        </div>
        
		<div>
	        <label for="TF check3"><spring:message code="mbti.test9" text="default text" /></label>
	        <label><input type="radio" name="q9" value="F" class="mb"> <spring:message code="mbti.test.yes" text="default text" /></label>
	        <label><input type="radio" name="q9" value="T" class="mb"> <spring:message code="mbti.test.no" text="default text" /></label>
        <br>
        </div>
        
		<div>
	        <label for="PJ check1"><spring:message code="mbti.test10" text="default text" /></label>
	        <label><input type="radio" name="q10" value="J" class="mb"> <spring:message code="mbti.test.yes" text="default text" /></label>
	        <label><input type="radio" name="q10" value="P" class="mb"> <spring:message code="mbti.test.no" text="default text" /></label>
        <br>
        </div>
        
		<div>
	        <label for="PJ check2"><spring:message code="mbti.test11" text="default text" /></label>
	        <label><input type="radio" name="q11" value="J" class="mb"> <spring:message code="mbti.test.yes" text="default text" /></label>
	        <label><input type="radio" name="q11" value="P" class="mb"> <spring:message code="mbti.test.no" text="default text" /></label>
        <br>
        </div>
        
		<div>
	        <label for="PJ check3"><spring:message code="mbti.test12" text="default text" /></label>
	        <label><input type="radio" name="q12" value="J" class="mb"> <spring:message code="mbti.test.yes" text="default text" /></label>
	        <label><input type="radio" name="q12" value="P" class="mb"> <spring:message code="mbti.test.no" text="default text" /></label>
        <br>
        </div>
        
        <article class="result_button">
        	<input type="submit" value="<spring:message code="mbti.test13" text="default text" />" style="color=white; background-color:transparent; border:0px transparent solid;">
        </article>
    </form>
    </div>
    </div>
    <div><p>　</p><p>　</p>
    </div>
    
    <div class="progress-bar-container">
    <div class="progress-bar">
        <div class="progress-indicator"></div>
    </div>
    <div class="progress-label"></div>
	</div>
    

    <div id="resultContainer" style="display: none;">
        <h2><spring:message code="mbti.test14" text="default text" /></h2>
        <p id="mbtiResult" class="result">${result }</p>
    </div>
    

    <script src="${cpath }/resources/js/mbti.js"></script>
</section>
</body>
</html>