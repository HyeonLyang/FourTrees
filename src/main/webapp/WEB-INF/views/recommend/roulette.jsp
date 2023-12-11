<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<c:set var="imgPath" value="${cpath }/resources/img/recommend"/>
<style>
.roulette_back {
	display: flex;
	flex-direction: row;
	width: 1200px;
	height: 550px;
	justify-content: center;
	box-sizing: border-box;
	padding: 20px;
}
.game_back {
    perspective: 2300px; /* 3D 변환의 원근 거리 설정 */
    width: 80%;
    height: 100%;
}
.game_table {
	transform-style: preserve-3d; /* 하위 요소의 3D 변환을 유지하도록 설정 */
    transform: rotateX(50deg) rotateY(0deg) translateX(10px) translateY(-200px); /* x축과 y축으로 45도 회전 */
    border-spacing: 10px;
    box-shadow: 5px 5px 10px black;
}

.cell {
    border: none;
    box-sizing: border-box;
    width: 140px;
    height: 100px;
    border-radius: 10px;
    box-shadow: 3px 15px 3px black;
    border-bottom: 8px solid #B87E61;
    border-right: 2px solid black;
}
.cell img {
	width: 100%;
	height: 80px;
	box-shadow: 0px 10px 3px black;
	transform: rotateX(10deg) rotateY(10deg);
	border-radius: 15px;
}
.cell div {
	text-align: center;
	font-size: 120%;
	font-weight: bolder;
	color: white;
	box-sizing: border-box;
	margin: 0 auto;
}
.cell div:nth-child(2) {
	margin-top: 6px;
}
.cece .cell {
	width: 100px;
	height: 140px;
}
.game_table .border_no {
    border: 0;
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat; /* 이미지 반복을 막음 */
}
.game_back {
	width: 70%;
}
.game_btns {
	padding: 10px;
	display: flex;
	flex-direction: column;
	justify-content: flex-end;
}
.game_btns button {
	width: 150px;
	height: 70px;
	border: none;
	border-radius: 10px;
	font-size: 25px;
}
.game_list {
    background-color: #d2691e50;
    padding: 10px;
    box-sizing: border-box;
    border-radius: 15px;
}

/* 초콜렛 */
.game_table td:nth-child(2n), .game_table #cell_8  {
  background-color: #C46500;
}
/* 보라색 */
.game_table td:nth-child(2n+1) {
	background-color: #8F60C2;
}
/* 파란색 */
#tr1 td{
	background-color: #3294CB;
}
/* 빨강색 */
#tr2 td{
	background-color: #C43005;
}
/* 흰회색 */
.game_table #big_cell {
	background-color: #D4DFE0;
	text-shadow: 3px 3px 1px black;
}
.game_table #big_cell:nth-child(1) img{
	height: 90px;
	width: 90px;
}
.game_back h2 {
	margin: 0 auto;
	text-align: center;
}

</style>
<section class="roulette_back">
	<div class="game_back">
	<h2>랜드마크 룰렛 "MZ TOP20 명소 맛집"</h2>
		<table class="game_table" >
		    <tr class="cece" id="tr1">
		        <td class="cell" id="big_cell">
		        	<div><img src="${imgPath}/63빌딩.png"></div>
		        	<div>63빌딩</div>
				</td>
		        <td class="cell">2</td>
		        <td class="cell">3</td>
		        <td class="cell">4</td>
		        <td class="cell">5</td>
		        <td class="cell" id="big_cell">
		        	<div><img src="${imgPath}/경복궁.png"></div>
		        	<div>경복궁</div>
				</td>
		    </tr>
		    <tr>
		        <td class="cell">7</td>
	   	        <td class="border_no" colspan="4" rowspan="4"
	style="background-image: url('${imgPath}/서울.png');">
	   	        </td>	
		        <td class="cell" id="cell_8">8</td>
		    </tr>
		    <tr>
		        <td class="cell">9</td>
		        <td class="cell">10</td>
		    </tr>
		    <tr>
		        <td class="cell">11</td>
		        <td class="cell">12</td>
		    </tr>
		    <tr>
		        <td class="cell">13</td>
		        <td class="cell">14</td>
		    </tr>
		    <tr class="cece" id="tr2">
		        <td class="cell" id="big_cell">
		        	<div><img src="${imgPath}/남산타워.png"></div>
		        	<div>남산타워</div>
		        </td>
		        <td class="cell">16</td>
		        <td class="cell">17</td>
		        <td class="cell">18</td>
		        <td class="cell"></td>
		        <td class="cell" id="big_cell">
		        	<div><img src="${imgPath}/광화문.png"></div>
		        	<div>광화문</div>
		        </td>
		    </tr>
		</table>
	</div>
	<div class="game_btns">
		<p onclick="start()"><button>start</button></p>
		<p onclick="stop()"><button>stop</button></p>
	</div>
	<div class="game_list">
		<h4>EDITOR PICK TOP20</h4>
		<hr>
	</div>
</section>


<script>
// intervalId를 전역변수로 설정
let intervalId;

function start() {
	// 중복 하지 못하게 intervalId가 존재하는 상태면 삭제하고 함수를 시작한다
	if (intervalId) {
		clearInterval(intervalId);
	}
	
	// 셀의 배열을 생성
    const cells = document.querySelectorAll('.cell');
	// 배경색을 바꿔서 점등시킬 셀의 순서를 정해준다.
    const order = [20,19,18,17,16,15,13,11,9,7,1,2,3,4,5,6,8,10,12,14];
    let index = 0;

    intervalId = setInterval(function() {
        // 이전 셀의 배경색을 초기화
        if (index > 0) {
            cells[order[index - 1] - 1].style.backgroundColor = "";
        } else if (index === 0 && order.length > 0) {
            // 처음 시작할 때 마지막 셀의 배경색 초기화(빨강색으로 점등된 셀을 다시 초기화)
            cells[order[order.length - 1] - 1].style.backgroundColor = "";
        }

        // 현재 인덱스의 배경색을 변경 (빨강색으로 점등)
        cells[order[index] - 1].style.backgroundColor = "red";
        
        // 다음 인덱스로 이동
        index++;

        // 모든 셀을 변경한 경우 인덱스 초기화
        if (index === order.length) {
            index = 0;
        }
        // 0.1초에 한번
    }, 66);
}

function stop() {
    clearInterval(intervalId);  // setInterval 중지
    alert("당첨되었습니다!");  // 알림 메시지 표시
}
</script>

</body>
</html>