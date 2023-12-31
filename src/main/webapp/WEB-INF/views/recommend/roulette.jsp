<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<c:set var="imgPath" value="${cpath }/resources/img"/>
<style>
.roulette_back {
	display: flex;
	width: 60%;
	height: 550px;
	box-sizing: border-box;
}
.game_table {
    border-spacing: 10px;
}

.cell {
    border: none;
    box-sizing: border-box;
    width: 60px;
    height: 100px;
    border-radius: 10px;
}
.cell img {
	width: 100%;
}
.cell div {
	text-align: center;
	font-size: 16px;
	font-weight: bolder;
	color: black;
	box-sizing: border-box;
	margin: 0 auto;
}
.cell div:nth-child(2) {
	margin-top: 6px;
}
.cece .cell {
	width: 80px;
	height: 100px;
}
.game_table .border_no {
    border: 0;
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat; /* 이미지 반복을 막음 */
}
.game_back {
	width: 100%;
}
.game_table button {
	font-size: 16px;
	background-color: deepskyblue;
	border-radius: 10px;
	padding: 22px;
	color: white;
	border: 3px solid rgba(0, 0, 0, 0);
	margin: 0px;
	text-align: center;
}
.game_list {
    box-sizing: border-box;
    border-radius: 15px;
}
/* 흰회색 */
.game_table #big_cell {
	height: 80px;
	background-color: white;
	border: 1px solid black;
}
/* 검정색 */
.game_table #big_cell2 {
	height: 80px;
	background-color: black;
	border: 1px solid black;
}

#big_cell2 div {
	color: white;
}

.game_table #big_cell img{
	height: 50px;
	width: 50px;
	padding: 1px;
}

.game_table #big_cell2 img{
	height: 50px;
	width: 50px;
	padding: 1px;
}

.game_back h2 {
	text-align: center;
}

</style>
<section class="roulette_back">
	<div class="game_back">
	<h2><spring:message code="rul.main" text="default text" /></h2>
		<table class="game_table" >
		    <tr class="cece" id="tr1">
		        <td class="cell" id="big_cell">
		        	<div><img src="${imgPath}/header/w1.png"></div>
		        	<div><spring:message code="rul.food1" text="default text" /></div>
				</td>
		        <td class="cell" id="big_cell2">
		        	<div><img src="${imgPath}/header/b1.png"></div>
		        	<div><spring:message code="rul.food2" text="default text" /></div>
		        <td class="cell" id="big_cell">
		        	<div><img src="${imgPath}/header/w2.png"></div>
		        	<div><spring:message code="rul.food3" text="default text" /></div>
				</td>
		        <td class="cell" id="big_cell2">
		        	<div><img src="${imgPath}/header/b2.png"></div>
		        	<div><spring:message code="rul.food4" text="default text" /></div>
		        <td class="cell" id="big_cell">
		        	<div><img src="${imgPath}/header/w3.png"></div>
		        	<div><spring:message code="rul.food5" text="default text" /></div>
				</td>
		        <td class="cell" id="big_cell2">
		        	<div><img src="${imgPath}/header/b3.png"></div>
		        	<div><spring:message code="rul.food6" text="default text" /></div>
		        </td>
		        <td class="cell" id="big_cell">
		        	<div><img src="${imgPath}/header/w4.png"></div>
		        	<div><spring:message code="rul.food7" text="default text" /></div>
				</td>
				<td>
					<p onclick="start()"><button><spring:message code="rul.bt1" text="default text" /></button></p>
				</td>
				<td>
					<p onclick="stop()"><button><spring:message code="rul.bt2" text="default text" /></button></p>
				</td>
		    </tr>
		    <tr>
		        <td class="cell" id="big_cell2">
		        	<div><img src="${imgPath}/header/b4.png"></div>
		        	<div><spring:message code="rul.food8" text="default text" /></div>
		        <td class="cell" id="big_cell">
		        	<div><img src="${imgPath}/header/w5.png"></div>
		        	<div><spring:message code="rul.food9" text="default text" /></div>
				</td>
		        <td class="cell" id="big_cell2">
		        	<div><img src="${imgPath}/header/b5.png"></div>
		        	<div><spring:message code="rul.food10" text="default text" /></div>
		        <td class="cell" id="big_cell">
		        	<div><img src="${imgPath}/header/w6.png"></div>
		        	<div><spring:message code="rul.food11" text="default text" /></div>
				</td>
		        <td class="cell" id="big_cell2">
		        	<div><img src="${imgPath}/header/b6.png"></div>
		        	<div><spring:message code="rul.food12" text="default text" /></div>
		        </td>
		        <td class="cell" id="big_cell">
		        	<div><img src="${imgPath}/header/w7.png"></div>
		        	<div><spring:message code="rul.food13" text="default text" /></div>
				</td>
				<td class="cell" id="big_cell2">
		        	<div><img src="${imgPath}/header/b7.png"></div>
		        	<div><spring:message code="rul.food14" text="default text" /></div>
		        </td>
		    </tr>
		    <tr class="cece" id="tr1">
		        <td class="cell" id="big_cell">
		        	<div><img src="${imgPath}/header/w8.png"></div>
		        	<div><spring:message code="rul.food15" text="default text" /></div>
				</td>
		        <td class="cell" id="big_cell2">
		        	<div><img src="${imgPath}/header/b8.png"></div>
		        	<div><spring:message code="rul.food16" text="default text" /></div>
		        <td class="cell" id="big_cell">
		        	<div><img src="${imgPath}/header/w9.png"></div>
		        	<div><spring:message code="rul.food17" text="default text" /></div>
				</td>
		        <td class="cell" id="big_cell2">
		        	<div><img src="${imgPath}/header/b9.png"></div>
		        	<div><spring:message code="rul.food18" text="default text" /></div>
		        <td class="cell" id="big_cell">
		        	<div><img src="${imgPath}/header/w10.png"></div>
		        	<div><spring:message code="rul.food19" text="default text" /></div>
				</td>
		        <td class="cell" id="big_cell2">
		        	<div><img src="${imgPath}/header/b10.png"></div>
		        	<div><spring:message code="rul.food20" text="default text" /></div>
		        </td>
		        <td class="cell" id="big_cell">
		        	<div><img src="${imgPath}/header/w11.png"></div>
		        	<div><spring:message code="rul.food21" text="default text" /></div>
				</td>
		    </tr>
		    <tr>
		        <td class="cell" id="big_cell2">
		        	<div><img src="${imgPath}/header/b11.png"></div>
		        	<div><spring:message code="rul.food22" text="default text" /></div>
		        <td class="cell" id="big_cell">
		        	<div><img src="${imgPath}/header/w12.png"></div>
		        	<div><spring:message code="rul.food23" text="default text" /></div>
				</td>
		        <td class="cell" id="big_cell2">
		        	<div><img src="${imgPath}/header/b12.png"></div>
		        	<div><spring:message code="rul.food24" text="default text" /></div>
		        <td class="cell" id="big_cell">
		        	<div><img src="${imgPath}/header/w13.png"></div>
		        	<div><spring:message code="rul.food25" text="default text" /></div>
				</td>
		        <td class="cell" id="big_cell2">
		        	<div><img src="${imgPath}/header/b13.png"></div>
		        	<div><spring:message code="rul.food26" text="default text" /></div>
		        </td>
		        <td class="cell" id="big_cell">
		        	<div><img src="${imgPath}/header/w14.png"></div>
		        	<div><spring:message code="rul.food27" text="default text" /></div>
				</td>
				<td class="cell" id="big_cell2">
		        	<div><img src="${imgPath}/header/b14.png"></div>
		        	<div><spring:message code="rul.food28" text="default text" /></div>
		        </td>
		    </tr>
		    <tr class="cece" id="tr1">
		        <td class="cell" id="big_cell">
		        	<div><img src="${imgPath}/header/w15.png"></div>
		        	<div><spring:message code="rul.food29" text="default text" /></div>
				</td>
		        <td class="cell" id="big_cell2">
		        	<div><img src="${imgPath}/header/b15.png"></div>
		        	<div><spring:message code="rul.food30" text="default text" /></div>
		        <td class="cell" id="big_cell">
		        	<div><img src="${imgPath}/header/w16.png"></div>
		        	<div><spring:message code="rul.food31" text="default text" /></div>
				</td>
		        <td class="cell" id="big_cell2">
		        	<div><img src="${imgPath}/header/b16.png"></div>
		        	<div><spring:message code="rul.food32" text="default text" /></div>
		        <td class="cell" id="big_cell">
		        	<div><img src="${imgPath}/header/w17.png"></div>
		        	<div><spring:message code="rul.food33" text="default text" /></div>
				</td>
		        <td class="cell" id="big_cell2">
		        	<div><img src="${imgPath}/header/b17.png"></div>
		        	<div><spring:message code="rul.food34" text="default text" /></div>
		        </td>
		        <td class="cell" id="big_cell">
		        	<div><img src="${imgPath}/header/w18.png"></div>
		        	<div><spring:message code="rul.food35" text="default text" /></div>
				</td>
		    </tr>
		    <tr>
		        <td class="cell" id="big_cell2">
		        	<div><img src="${imgPath}/header/b18.png"></div>
		        	<div><spring:message code="rul.food36" text="default text" /></div>
		        <td class="cell" id="big_cell">
		        	<div><img src="${imgPath}/header/w19.png"></div>
		        	<div><spring:message code="rul.food37" text="default text" /></div>
				</td>
		        <td class="cell" id="big_cell2">
		        	<div><img src="${imgPath}/header/b19.png"></div>
		        	<div><spring:message code="rul.food38" text="default text" /></div>
		        <td class="cell" id="big_cell">
		        	<div><img src="${imgPath}/header/w20.png"></div>
		        	<div><spring:message code="rul.food39" text="default text" /></div>
				</td>
		        <td class="cell" id="big_cell2">
		        	<div><img src="${imgPath}/header/b20.png"></div>
		        	<div><spring:message code="rul.food40" text="default text" /></div>
		        </td>
		        <td class="cell" id="big_cell">
		        	<div><img src="${imgPath}/header/w21.png"></div>
		        	<div><spring:message code="rul.food41" text="default text" /></div>
				</td>
				<td class="cell" id="big_cell2">
		        	<div><img src="${imgPath}/header/b21.png"></div>
		        	<div><spring:message code="rul.food42" text="default text" /></div>
		        </td>
		    </tr>
		    <tr class="cece" id="tr1">
		        <td class="cell" id="big_cell">
		        	<div><img src="${imgPath}/header/w22.png"></div>
		        	<div><spring:message code="rul.food43" text="default text" /></div>
				</td>
		        <td class="cell" id="big_cell2">
		        	<div><img src="${imgPath}/header/b22.png"></div>
		        	<div><spring:message code="rul.food44" text="default text" /></div>
		        <td class="cell" id="big_cell">
		        	<div><img src="${imgPath}/header/w23.png"></div>
		        	<div><spring:message code="rul.food45" text="default text" /></div>
				</td>
		        <td class="cell" id="big_cell2">
		        	<div><img src="${imgPath}/header/b23.png"></div>
		        	<div><spring:message code="rul.food46" text="default text" /></div>
		        <td class="cell" id="big_cell">
		        	<div><img src="${imgPath}/header/w24.png"></div>
		        	<div><spring:message code="rul.food47" text="default text" /></div>
				</td>
		        <td class="cell" id="big_cell2">
		        	<div><img src="${imgPath}/header/b24.png"></div>
		        	<div><spring:message code="rul.food48" text="default text" /></div>
		        </td>
		        <td class="cell" id="big_cell">
		        	<div><img src="${imgPath}/header/w25.png"></div>
		        	<div><spring:message code="rul.food49" text="default text" /></div>
				</td>
		    </tr>
		</table>
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
	    const order = Array.from({ length: 49 }, (_, i) => i + 1); // 1부터 49까지의 숫자를 배열에 넣음
	
	// Fisher-Yates 알고리즘을 사용하여 배열을 섞음
	for (let i = order.length - 1; i > 0; i--) {
	    const j = Math.floor(Math.random() * (i + 1));
	    [order[i], order[j]] = [order[j], order[i]];
	}
	
	console.log(order);
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