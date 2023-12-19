<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<link href="${cpath }/resources/css/rank_css/rank_area_de_style.css" rel="stylesheet">
<c:set var="star_rating" value="${res.score / 5 * 100 }"/>
<c:set var="cate" value="${cate_list }"/>
<section class="rank_detail">
	
	<section class="rank_detail_btns">
		<p class="rank_detail_btn">서울</p>
		<p class="rank_detail_btn">부산</p>
		<p class="rank_detail_btn">강원도</p>
		<p class="rank_detail_btn">제주</p>
	</section>
	
	<h1 class="rank_detail_title">서울 맛집 TOP10</h1>
	<section class="rank_detail_main">
		
		<ol class="rank_detail_board">
		
		</ol>
		<p class="rank_detail_toArea" 
			OnClick="location.href ='#'" 
			style="cursor:pointer">
			지도에서 맛집 찾기 →
		</p>
	</section>
	
	<h1 class="rank_detail_title">부산 맛집 TOP10</h1>
	<section class="rank_detail_main">
		
		<ol class="rank_detail_board">
		<c:forEach var="res" items="${res_busan }" varStatus="status">
			<li class="rank_detail_res">
				<a href="${cpath }/restaurant/res_detail/${res.idx}" class="rank_detail_topRes">
					<c:if test="${rank[status.index] < 4}">
						<div><img class="rank_detail_medal" src="${cpath }/resources/img/rank/ranking${rank[status.index] }.png"></div>
					</c:if>
					<c:if test="${rank[status.index] >= 4}">
						<div><img class="rank_detail_medal" src="${cpath }/resources/img/rank/ranking4.png"></div>
					</c:if>
					<p class="rank_detail_block"><!-- <img class="rank_detail_img" src="${cpath }/resources/img/ex05.jpg"> --></p>
					<p>${res.name }</p>
					<p>${res.category }</p>
					<div class="rank_detail_rating">
						<div class="rank_detail_rate_back">
						<!-- db연결 후 width: 별점 -->
				    		<span style="width: ${star_rating}%" class="rank_detail_rate_front"></span>
				    	</div>
						<b class="rank_detail_score">${res.score }</b>
					</div>
				</a>
			</li>
		</c:forEach>
		</ol>
		<p class="rank_detail_toArea" 
			OnClick="location.href ='#'" 
			style="cursor:pointer">
			지도에서 맛집 찾기 →
		</p>
	</section>
	
	<h1 class="rank_detail_title">강원 맛집 TOP10</h1>
	<section class="rank_detail_main">
		
		<ol class="rank_detail_board">
		<c:forEach var="res" items="${res_kangwon }" varStatus="status">
			<li class="rank_detail_res">
				<a href="${cpath }/restaurant/res_detail/${res.idx}" class="rank_detail_topRes">
					<c:if test="${rank[status.index] < 4}">
						<div><img class="rank_detail_medal" src="${cpath }/resources/img/rank/ranking${rank[status.index] }.png"></div>
					</c:if>
					<c:if test="${rank[status.index] >= 4}">
						<div><img class="rank_detail_medal" src="${cpath }/resources/img/rank/ranking4.png"></div>
					</c:if>
					<p class="rank_detail_block"><!-- <img class="rank_detail_img" src="${cpath }/resources/img/ex05.jpg"> --></p>
					<p>${res.name }</p>
					<p>${res.category }</p>
					<div class="rank_detail_rating">
						<div class="rank_detail_rate_back">
						<!-- db연결 후 width: 별점 -->
				    		<span style="width: ${star_rating}%" class="rank_detail_rate_front"></span>
				    	</div>
						<b class="rank_detail_score">${res.score }</b>
					</div>
				</a>
			</li>
		</c:forEach>
		</ol>
		<p class="rank_detail_toArea" 
			OnClick="location.href ='#'" 
			style="cursor:pointer">
			지도에서 맛집 찾기 →
		</p>
	</section>
	
	<h1 class="rank_detail_title">제주 맛집 TOP10</h1>
	<section class="rank_detail_main">
		
		<ol class="rank_detail_board">
		<c:forEach var="res" items="${res_jeju }" varStatus="status">
			<li class="rank_detail_res">
				<a href="${cpath }/restaurant/res_detail/${res.idx}" class="rank_detail_topRes">
					<c:if test="${rank[status.index] < 4}">
						<div><img class="rank_detail_medal" src="${cpath }/resources/img/rank/ranking${rank[status.index] }.png"></div>
					</c:if>
					<c:if test="${rank[status.index] >= 4}">
						<div><img class="rank_detail_medal" src="${cpath }/resources/img/rank/ranking4.png"></div>
					</c:if>
					<p class="rank_detail_block"><!-- <img class="rank_detail_img" src="${cpath }/resources/img/ex05.jpg"> --></p>
					<p>${res.name }</p>
					<p>${res.category }</p>
					<div class="rank_detail_rating">
						<div class="rank_detail_rate_back">
						<!-- db연결 후 width: 별점 -->
				    		<span style="width: ${star_rating}%" class="rank_detail_rate_front"></span>
				    	</div>
						<b class="rank_detail_score">${res.score }</b>
					</div>
				</a>
			</li>
		</c:forEach>
		</ol>
		<p class="rank_detail_toArea" 
			OnClick="location.href ='#'" 
			style="cursor:pointer">
			지도에서 맛집 찾기 →
		</p>
	</section>
	
</section>

<script type="text/javascript">
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
								    	`<span style="width: ${star_rating}%" class="rank_detail_rate_front"></span>` +
								    '</div>' +
									'<b class="rank_detail_score">' + data[i].score + '</b>' +
								'</div>' +
							'</a>' +
						'</li>';
				}else{
					li.innerHTML = 
						'<li class="rank_detail_res">' +
							'<a href="${cpath }/restaurant/res_detail/' + data[i].idx + '" class="rank_detail_topRes">' +
								'<div>' + '<img class="rank_category_medal" src="${cpath}/resources/img/rank/ranking4.png">' + '</div>' +
								'<p class="rank_detail_block"></p>' +
								'<p>' + data[i].name + '</p>' +
								'<p>' + data[i].category + '</p>' +
								'<div class="rank_detail_rating">' +
									'<div class="rank_detail_rate_back">' +
								    	`<span style="width: ${star_rating}%" class="rank_detail_rate_front"></span>` +
								    '</div>' +
									'<b class="rank_detail_score">' + data[i].score + '</b>' +
								'</div>' +
							'</a>' +
						'</li>';
				}
				result.appendChild(li);
			}
		});
	}
	
	
	let btns = document.querySelectorAll('.rank_detail_btns > button');
	let url = 'aRank';
	var dt;
	
	
	ranking(101);
	
	btns[0].onclick = () => ranking('서울');
	btns[1].onclick = () => ranking('부산');
	btns[2].onclick = () => ranking('강원');
	btns[3].onclick = () => ranking('제주');
	
</script>

<!-- <script>
		
		const btnArr = document.getElementsByClassName('rank_detail_btn');
		const areaArr = document.getElementsByClassName('rank_detail_toArea');
		
		for(let i = 0; i < btnArr.length; i++){
	
			  btnArr[i].addEventListener('click',function(e){
			    e.preventDefault();
			    areaArr[i].scrollIntoView(true);
			    behavior: 'smooth';
			  });
	
			}
		
	</script> -->	
	
</body>
</html>