<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<link href="${cpath }/resources/css/rank_css/rank_category_style.css" rel="stylesheet">
<c:set var="star_rating" value="${res.score / 5 * 100 }"/>
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
		<p class="rank_category_toArea" OnClick="location.href ='#'" style="cursor:pointer">내 지역의 ${cate[0].name } 맛집 찾으러 가기 →</p>
	</section>
	
</section>	

<script type="text/javascript">
	
	function ranking(reqCate) { 
		
		fetch(url + '?idx=' + reqCate, { method: 'GET' })
		.then(response => response.json())
		.then(data => {
			dt = data;
			
			console.log(dt);
		
			let result = document.querySelectorAll('.rank_category_board')[0];
			result.innerHTML = '';
			
			for (let i = 0; i < 10; i++) {
				let li = document.createElement('li');
				
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
								    	`<span style="width: ${star_rating}%" class="rank_category_rate_front"></span>` +
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
								    	`<span style="width: ${star_rating}%" class="rank_category_rate_front"></span>` +
								    '</div>' +
									'<b class="rank_category_score">' + data[i].score + '</b>' +
								'</div>' +
							'</a>' +
						'</li>';
				}
				result.appendChild(li);
			}
		});
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

	
</script>	

</body>
</html>