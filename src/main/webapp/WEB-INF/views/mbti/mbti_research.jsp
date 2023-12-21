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
   <h1><img src="${cpath }/resources/img/mbti/mbti.png">MBTI TEST PAGE</h1>
    <div class="mbti-con">
    <div class="mbti-move">
    <form id="mbtiForm">
	    <div>
	        <label for="EI check1">1. 밥은 혼자먹기보다는 여럿이서 먹어야 맛있다. 　</label>
	        <label><input type="radio" name="q1" value="E" class="mb"> 그렇다</label>
	        <label><input type="radio" name="q1" value="I" class="mb"> 아니다</label>
	        <br>
	    </div>
	    
		<div>
	        <label for="EI check2">2. 밖에서 먹는 식사보다 집에서 시켜먹는 음식이 더 좋다. 　</label>
	        <label><input type="radio" name="q2" value="I" class="mb"> 그렇다</label>
	        <label><input type="radio" name="q2" value="E" class="mb"> 아니다</label>
	        <br>
		</div>
		
		<div>
	        <label for="EI check3">3. 내가 먼저 2차를 가자고 제안하는 편이다.　</label>
	        <label><input type="radio" name="q3" value="E" class="mb"> 그렇다</label>
	        <label><input type="radio" name="q3" value="I" class="mb"> 아니다</label>
        <br>
		</div>
		
		<div>
	        <label for="SN check1">4. 새로운 신제품이 출시하면 한 번은 구매해보는 편이다.　</label>
	        <label><input type="radio" name="q4" value="N" class="mb"> 그렇다</label>
	        <label><input type="radio" name="q4" value="S" class="mb"> 아니다</label>
        <br>
        </div>
		
		<div>
	        <label for="SN check2">5. 최고의 맛집에서 음식을 먹을 수 있다면 1시간을 기다려도 상관없다.</label>
	        <label><input type="radio" name="q5" value="N" class="mb"> 그렇다</label>
	        <label><input type="radio" name="q5" value="S" class="mb"> 아니다</label>
        <br>
        </div>
        
		
		<div>
	        <label for="SN check3">6. 내가 먹고싶은 것을 마음대로 먹는 상상을 하곤 한다.</label>
	        <label><input type="radio" name="q6" value="N" class="mb"> 그렇다</label>
	        <label><input type="radio" name="q6" value="S" class="mb"> 아니다</label>
        <br>
        </div>
        
		<div>
	        <label for="TF check1">7. 내가 먼저 친구나 친한 지인들에게 밥을 사는 편이다.</label>
	        <label><input type="radio" name="q7" value="T" class="mb"> 그렇다</label>
	        <label><input type="radio" name="q7" value="F" class="mb"> 아니다</label>
        <br>
        </div>
        
		<div>
	        <label for="TF check2">8. 패스트푸드 음식을 자주 먹는 편이다.</label>
	        <label><input type="radio" name="q8" value="T" class="mb"> 그렇다</label>
	        <label><input type="radio" name="q8" value="F" class="mb"> 아니다</label>
        <br>
        </div>
        
		<div>
	        <label for="TF check3">9. 카페에 자주 가는 편이다.</label>
	        <label><input type="radio" name="q9" value="F" class="mb"> 그렇다</label>
	        <label><input type="radio" name="q9" value="T" class="mb"> 아니다</label>
        <br>
        </div>
        
		<div>
	        <label for="PJ check1">10. 아침은 꼭 챙겨먹는 편이다.　</label>
	        <label><input type="radio" name="q10" value="J" class="mb"> 그렇다</label>
	        <label><input type="radio" name="q10" value="P" class="mb"> 아니다</label>
        <br>
        </div>
        
		<div>
	        <label for="PJ check2">11. 여행을 가기 전 맛집이 어딘지 체크하는 것은 필수이다.　</label>
	        <label><input type="radio" name="q11" value="J" class="mb"> 그렇다</label>
	        <label><input type="radio" name="q11" value="P" class="mb"> 아니다</label>
        <br>
        </div>
        
		<div>
	        <label for="PJ check3">12. 다이어트에서 가장 중요한 것은 식단관리이다.　</label>
	        <label><input type="radio" name="q12" value="J" class="mb"> 그렇다</label>
	        <label><input type="radio" name="q12" value="P" class="mb"> 아니다</label>
        <br>
        </div>
        
        <article class="result_button">
        	<input type="submit" value="결과확인" style="color=white; background-color:transparent; border:0px transparent solid;">
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
        <h2>당신의 MBTI 결과는...</h2>
        <p id="mbtiResult" class="result">${result }</p>
    </div>
    

    <script src="${cpath }/resources/js/mbti.js"></script>
</section>
</body>
</html>