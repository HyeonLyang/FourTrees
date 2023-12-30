<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<link href="${cpath }/resources/css/rank_css/rank_area_de_style.css" rel="stylesheet">

<c:set var="cate" value="${cate_list }"/>
<section class="rank_detail">
	
	<section class="rank_detail_btns" style="padding: ">
		<p class="rank_detail_btn"><spring:message code="rank.area1" text="default text" /></p>
		<p class="rank_detail_btn"><spring:message code="rank.area2" text="default text" /></p>
		<p class="rank_detail_btn"><spring:message code="rank.area3" text="default text" /></p>
		<p class="rank_detail_btn"><spring:message code="rank.area4" text="default text" /></p>
	</section>
	
	<h1 class="rank_detail_title"></h1>
	<section class="rank_detail_main">
		
		<ol class="rank_detail_board">
		
		</ol>
		<p class="rank_detail_toArea" 
			style="cursor:pointer">
		</p>
	</section>
	
</section>

<script type="text/javascript">

function goToAreaPage(reqArea) {
    let destination = ''; // 이동할 페이지의 주소
    if (reqArea === '서울') {
        destination = '${cpath}/search/sc_detail?address=서울'; // 서울 페이지 주소
    } else if (reqArea === '부산') {
        destination = '${cpath}/search/sc_detail?address=부산'; // 부산 페이지 주소
    } else if (reqArea === '강원') {
        destination = '${cpath}/search/sc_detail?address=강원'; // 강원도 페이지 주소
    } else if (reqArea === '제주') {
        destination = '${cpath}/search/sc_detail?address=제주'; // 제주 페이지 주소
    }
    location.href = destination; // 해당 페이지로 이동
}
	
	function ranking(reqArea) { 
		
		fetch(url + '?area=' + reqArea, { method: 'GET' })
		.then(response => response.json())
		.then(data => {
			dt = data;
			
			
			console.log(dt);
			
			let title = document.querySelectorAll('.rank_detail_title')[0];
			let goTo = document.querySelectorAll('.rank_detail_toArea')[0];
			let result = document.querySelectorAll('.rank_detail_board')[0];
			title.innerHTML = '';
			goTo.innerHTML = '';
			result.innerHTML = '';
			
			title.innerHTML = reqArea + '<spring:message code="rank.detail1" text="default text" />';
			goTo.innerHTML = reqArea + '<spring:message code="rank.detail2" text="default text" />';
			
			for (let i = 0; i < 10; i++) {
				let li = document.createElement('li');
				let star_rating = data[i].score / 5 * 100;
				
				console.log(star_rating);
				
				if(i < 3){
					li.innerHTML = 
						'<li class="rank_detail_res">' +
							'<a href="${cpath }/restaurant/res_detail/' + data[i].idx + '" class="rank_detail_topRes">' +
								'<div>' + '<img class="rank_detail_medal" src="${cpath}/resources/img/rank/ranking' + (i + 1) + '.png">' + '</div>' +
								'<p class="rank_detail_block"><img class="rank_detail_resImg" src="${cpath}/resources/img/restaurant/res_repImg/' + data[i].photo +'"></p>' +
								'<p>' + data[i].name + '</p>' +
								'<p>' + data[i].category + '</p>' +
								'<div class="rank_detail_rating">' +
									'<div class="rank_detail_rate_back">' +
									'<span style="width:' + star_rating + '%" class="rank_detail_rate_front"></span>' +
								    '</div>' +
									'<b class="rank_detail_score">' + data[i].score + '</b>' +
								'</div>' +
							'</a>' +
						'</li>';
				}else{
					li.innerHTML = 
						'<li class="rank_detail_res">' +
							'<a href="${cpath }/restaurant/res_detail/' + data[i].idx + '" class="rank_detail_topRes">' +
								'<div>' + '<img class="rank_detail_medal" src="${cpath}/resources/img/rank/ranking4.png">' + '</div>' +
								'<p class="rank_detail_block"><img class="rank_detail_resImg" src="${cpath}/resources/img/restaurant/res_repImg/' + data[i].photo +'"></p>' +
								'<p>' + data[i].name + '</p>' +
								'<p>' + data[i].category + '</p>' +
								'<div class="rank_detail_rating">' +
									'<div class="rank_detail_rate_back">' +
									'<span style="width:' + star_rating + '%" class="rank_detail_rate_front"></span>' +
								    '</div>' +
									'<b class="rank_detail_score">' + data[i].score + '</b>' +
								'</div>' +
							'</a>' +
						'</li>';
				}
				result.appendChild(li);
			}
			goTo.innerHTML = reqArea + '<spring:message code="rank.detail2" text="default text" />';
	        goTo.addEventListener('click', function () {
	            goToAreaPage(reqArea); // 해당 지역 페이지로 이동
	        });
		});
	}
	
	
	let btns = document.querySelectorAll('.rank_detail_btns > p');
	let url = 'aRank';
	var dt;
	
	
	ranking("<spring:message code="rank.area1" text="default text" />");
	
	btns[0].onclick = () => ranking("<spring:message code="rank.area1" text="default text" />");
	btns[1].onclick = () => ranking("<spring:message code="rank.area2" text="default text" />");
	btns[2].onclick = () => ranking('<spring:message code="rank.area3" text="default text" />');
	btns[3].onclick = () => ranking('<spring:message code="rank.area4" text="default text" />');
	
</script>


</body>
</html>