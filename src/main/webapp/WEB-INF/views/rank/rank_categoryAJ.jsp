<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<link href="${cpath }/resources/css/rank_css/rank_category_style.css" rel="stylesheet">
<c:set var="star_rating" value="${res.score / 5 * 100 }"/>
	<!-- css 폴더안에 정리해주세요 -->
<c:set var="cate" value="${res_list[0].category }"/>
<c:set var="res_list" value="${res_list }"/>

<section class="rank_category">

	<p class="btns">
		<c:forEach var="category" items="${cate_list }">
			<button>${category.name }</button>
		</c:forEach>
	</p>
	
	<h1 class="rank_category_title">${cate } 맛집 TOP10</h1>
	
	<section class="rank_category_main">
		
		<ol class="rank_category_board">
		
		</ol>
		<p class="rank_category_toArea" OnClick="location.href ='#'" style="cursor:pointer">내 지역의 ${cate } 맛집 찾으러 가기 →</p>
	</section>
	
</section>	

<script type="text/javascript">
	
	function ranking(reqCate) { 
		
		fetch(url + `?idx=${reqCate}`, { method: 'GET' })
		.then(response => response.json())
		.then(data => {
			dt = data;
		
			let result = document.querySelectorAll('.rank_category_board')[0];
			result.innerHTML = '';
			
			for (let i = 0; i < 10; i++) {
				let li = document.createElement('li');
				
				li.innerHTML = 
					'<li class="rank_category_res">' +
						'<div>' + `<img class="rank_category_medal" src="${cpath}/resources/img/rank/medal${i + 1}.png">` + '</div>' +
						'<a href="#" class="rank_category_topRes">' +
							'<p class="rank_category_block"></p>' +
							'<p>' + res_list[i].name + '</p>' +
							'<p>' + res_list[i].category + '</p>' +
							'<div class="rank_category_rating">' +
								'<div class="rank_category_rate_back">' +
							    	`<span style="width: ${star_rating}%" class="rank_category_rate_front"></span>` +
							    '</div>' +
								'<b class="rank_category_score">' + res_list[i].score + '</b>' +
							'</div>' +
						'</a>' +
					'</li>';
					
				result.appendChild(li);
			}
		});
	}
	
	
	let btns = document.querySelectorAll('.btns > button');
	let url = 'rank_categoryAJ';
	var dt;
	
	
	ranking(101);
	
</script>	

</body>
</html>