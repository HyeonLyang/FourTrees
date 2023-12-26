<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<link href="${cpath }/resources/css/rank_css/rank_category_style.css" rel="stylesheet">

	<!-- css 폴더안에 정리해주세요 -->
<c:set var="cate" value="${cate_list }"/>
<c:set var="res_list" value="${res_list }"/>

<section class="rank_category">

	<p class="rank_category_btns">
		<c:forEach var="category" items="${cate_list }">
			<button>${category.name }</button>
		</c:forEach>
	</p>
	
	<h1 class="rank_category_title">${cate[0].name } 맛집 TOP10</h1>
	
	<section class="rank_category_main">
		
		<ol class="rank_category_board">
		
		</ol>
		<p class="rank_category_toArea" OnClick="location.href ='${cpath}/search/sc_detail?address='" style="cursor:pointer">내 지역의 ${cate[0].name } 맛집 찾으러 가기 →</p>
	</section>
	
</section>	

<script type="text/javascript">

	function hideSpecificButtons() {
	    const btnsToHide = [4, 6, 9, 11, 12, 13]; // 숨길 버튼 번호 목록
	    const btns = document.querySelectorAll('.rank_category_btns > button');
	    btnsToHide.forEach(btnNumber => {
	        btns[btnNumber].style.display = 'none'; // 숨김 처리
	    });
	}
	
	function ranking(reqCate) { 
		
		fetch(url + '?idx=' + reqCate, { method: 'GET' })
		.then(response => response.json())
		.then(data => {
			dt = data;
			
			console.log(dt);
			
			let title = document.querySelectorAll('.rank_category_title')[0];
			let goTo = document.querySelectorAll('.rank_category_toArea')[0];
			let result = document.querySelectorAll('.rank_category_board')[0];
			title.innerHTML = '';
			goTo.innerHTML = '';
			result.innerHTML = '';
			
			title.innerHTML = data[1].category + '맛집 TOP10';
			goTo.innerHTML = data[1].category + '맛집 찾으러 가기';
			
			for (let i = 0; i < 10; i++) {
				let li = document.createElement('li');
				let star_rating = data[i].score / 5 * 100;
				
				if(i < 3){
					li.innerHTML = 
						'<li class="rank_category_res">' +
							'<a href="${cpath }/restaurant/res_detail/' + data[i].idx + '" class="rank_category_topRes">' +
								'<div>' + '<img class="rank_category_medal" src="${cpath}/resources/img/rank/ranking' + (i + 1) + '.png">' + '</div>' +
								'<p class="rank_category_block"></p>' +
								'<p>' + data[i].name + '</p>' +
								'<p>' + data[i].category + '</p>' +
								'<div class="rank_category_rating">' +
									'<div class="rank_category_rate_back">' +
								    	'<span style="width:' + star_rating + '%" class="rank_category_rate_front"></span>' +
								    '</div>' +
									'<b class="rank_category_score">' + data[i].score + '</b>' +
								'</div>' +
							'</a>' +
						'</li>';
				}else{
					li.innerHTML = 
						'<li class="rank_category_res">' +
							'<a href="${cpath }/restaurant/res_detail/' + data[i].idx + '" class="rank_category_topRes">' +
								'<div>' + '<img class="rank_category_medal" src="${cpath}/resources/img/rank/ranking4.png">' + '</div>' +
								'<p class="rank_category_block"></p>' +
								'<p>' + data[i].name + '</p>' +
								'<p>' + data[i].category + '</p>' +
								'<div class="rank_category_rating">' +
									'<div class="rank_category_rate_back">' +
									'<span style="width:' + star_rating + '%" class="rank_category_rate_front"></span>' +
								    '</div>' +
									'<b class="rank_category_score">' + data[i].score + '</b>' +
								'</div>' +
							'</a>' +
						'</li>';
				}
				result.appendChild(li);
			}
			
			hideSpecificButtons(); // 특정 버튼들 숨김 처리

	        goTo.innerHTML = '내 지역의 ${cate[0].name} 맛집 찾으러 가기 →';
	        goTo.addEventListener('click', function () {
	            // 현재 선택된 카테고리의 페이지로 이동
	            goToCategoryPage(dt[1].category); // dt에는 현재 선택된 카테고리의 정보가 있어야 합니다.
	        });
		});
	}
	
	function goToCategoryPage(address) {
        // address에 해당하는 페이지로 이동
        location.href = '${cpath}/search/sc_detail?category=' + address;
    }
	
	let btns = document.querySelectorAll('.rank_category_btns > button');
	let url = 'gRank';
	var dt;
	
	
	ranking(101);
	
	btns[0].onclick = () => ranking(101);
	btns[1].onclick = () => ranking(102);
	btns[2].onclick = () => ranking(103);
	btns[3].onclick = () => ranking(104);
	btns[4].onclick = () => ranking(105);
	btns[5].onclick = () => ranking(106);
	btns[6].onclick = () => ranking(107);
	btns[7].onclick = () => ranking(108);
	btns[8].onclick = () => ranking(109);
	btns[9].onclick = () => ranking(110);
	btns[10].onclick = () => ranking(111);
	btns[11].onclick = () => ranking(112);
	btns[12].onclick = () => ranking(113);
	btns[13].onclick = () => ranking(114);
	
	
	
</script>	

</body>
</html>