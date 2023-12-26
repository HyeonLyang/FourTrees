<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<link href="${cpath }/resources/css/rank_css/rank_area_de_style.css" rel="stylesheet">

<c:set var="cate" value="${cate_list }"/>
<section class="rank_detail">
	
	<section class="rank_detail_btns">
		<p class="rank_detail_btn">서울</p>
		<p class="rank_detail_btn">부산</p>
		<p class="rank_detail_btn">강원도</p>
		<p class="rank_detail_btn">제주</p>
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
			
			title.innerHTML = reqArea + '맛집 TOP10';
			goTo.innerHTML = reqArea + '맛집 찾으러 가기';
			
			for (let i = 0; i < 10; i++) {
				let li = document.createElement('li');
				let star_rating = data[i].score / 5 * 100;
				
				console.log(star_rating);
				
				if(i < 3){
					li.innerHTML = 
						'<li class="rank_detail_res">' +
							'<a href="${cpath }/restaurant/res_detail/' + data[i].idx + '" class="rank_detail_topRes">' +
								'<div>' + '<img class="rank_detail_medal" src="${cpath}/resources/img/rank/ranking' + (i + 1) + '.png">' + '</div>' +
								'<p class="rank_detail_block"></p>' +
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
								'<p class="rank_detail_block"></p>' +
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
			goTo.innerHTML = reqArea + '맛집 찾으러 가기';
	        goTo.addEventListener('click', function () {
	            goToAreaPage(reqArea); // 해당 지역 페이지로 이동
	        });
		});
	}
	
	
	let btns = document.querySelectorAll('.rank_detail_btns > p');
	let url = 'aRank';
	var dt;
	
	
	ranking("서울");
	
	btns[0].onclick = () => ranking("서울");
	btns[1].onclick = () => ranking("부산");
	btns[2].onclick = () => ranking('강원');
	btns[3].onclick = () => ranking('제주');
	
</script>


</body>
</html>