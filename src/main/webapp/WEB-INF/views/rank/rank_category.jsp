<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<link href="${cpath }/resources/css/rank_css/rank_category_style.css" rel="stylesheet">
<c:set var="star_rating" value="${res.score / 5 * 100 }"/>
	<!-- css 폴더안에 정리해주세요 -->
<c:set var="category" value="${cate_list }"/>
<section class="rank_category">

		<section class="rank_category_btns">
			<c:forEach var="cate" items="${category }">
				<p class="rank_category_btn">${cate.name }</p>
			</c:forEach>
		</section>
	
		<h1 class="rank_category_title">${category[0].name } TOP10</h1>
		<section class="rank_category_main">
			
			<ol class="rank_category_board">
			<c:forEach var="res" items="${rank0}" varStatus="res_status">
				<li></li>
				<li class="rank_category_res">
					<c:choose>
						<c:when test="${res_status.index < 4 }">
							<div><img class="rank_category_medal" src="${cpath}/resources/img/rank/ranking${res_status.index + 1}.png"></div>
						</c:when>
						<c:otherwise>
							<div><img class="rank_category_medal" src="${cpath}/resources/img/rank/ranking4.png"></div>
						</c:otherwise>
					</c:choose>
					<a href="#" class="rank_category_topRes">
						<p class="rank_category_block"><!-- <img class="rank_category_img" src="${cpath }/resources/img/ex05.jpg"> --></p>
						<p>${res.name }</p>
						<p>${category[0].name }</p>	
						<div class="rank_category_rating">
							<div class="rank_category_rate_back">
							<!-- db연결 후 width: 별점 -->
					    		<span style="width: ${star_rating}%" class="rank_category_rate_front"></span>
					    	</div>
							<b class="rank_category_score">${res.score }</b>
						</div>
					</a>
				</li>
			</c:forEach>
			</ol>
			<p class="rank_category_toArea" OnClick="location.href ='#'" style="cursor:pointer">내 지역의 ${category[0].name } 맛집 찾으러 가기 →</p>
		</section>
		
		<h1 class="rank_category_title">${category[1].name } TOP10</h1>
		<section class="rank_category_main">
			
			<ol class="rank_category_board">
			<c:forEach var="res" items="${rank0}" varStatus="res_status">
				<li></li>
				<li class="rank_category_res">
					<c:choose>
						<c:when test="${res_status.index < 4 }">
							<div><img class="rank_category_medal" src="${cpath}/resources/img/rank/ranking${res_status.index + 1}.png"></div>
						</c:when>
						<c:otherwise>
							<div><img class="rank_category_medal" src="${cpath}/resources/img/rank/ranking4.png"></div>
						</c:otherwise>
					</c:choose>
					<a href="#" class="rank_category_topRes">
						<p class="rank_category_block"><!-- <img class="rank_category_img" src="${cpath }/resources/img/ex05.jpg"> --></p>
						<p>${res.name }</p>
						<p>${category[0].name }</p>	
						<div class="rank_category_rating">
							<div class="rank_category_rate_back">
							<!-- db연결 후 width: 별점 -->
					    		<span style="width: ${star_rating}%" class="rank_category_rate_front"></span>
					    	</div>
							<b class="rank_category_score">${res.score }</b>
						</div>
					</a>
				</li>
			</c:forEach>
			</ol>
			<p class="rank_category_toArea" OnClick="location.href ='#'" style="cursor:pointer">내 지역의 ${category[0].name } 맛집 찾으러 가기 →</p>
		</section>
		
		<h1 class="rank_category_title">${category[2].name } TOP10</h1>
		<section class="rank_category_main">
			
			<ol class="rank_category_board">
			<c:forEach var="res" items="${rank0}" varStatus="res_status">
				<li></li>
				<li class="rank_category_res">
					<c:choose>
						<c:when test="${res_status.index < 4 }">
							<div><img class="rank_category_medal" src="${cpath}/resources/img/rank/ranking${res_status.index + 1}.png"></div>
						</c:when>
						<c:otherwise>
							<div><img class="rank_category_medal" src="${cpath}/resources/img/rank/ranking4.png"></div>
						</c:otherwise>
					</c:choose>
					<a href="#" class="rank_category_topRes">
						<p class="rank_category_block"><!-- <img class="rank_category_img" src="${cpath }/resources/img/ex05.jpg"> --></p>
						<p>${res.name }</p>
						<p>${category[0].name }</p>	
						<div class="rank_category_rating">
							<div class="rank_category_rate_back">
							<!-- db연결 후 width: 별점 -->
					    		<span style="width: ${star_rating}%" class="rank_category_rate_front"></span>
					    	</div>
							<b class="rank_category_score">${res.score }</b>
						</div>
					</a>
				</li>
			</c:forEach>
			</ol>
			<p class="rank_category_toArea" OnClick="location.href ='#'" style="cursor:pointer">내 지역의 ${category[0].name } 맛집 찾으러 가기 →</p>
		</section>
		
		<h1 class="rank_category_title">${category[3].name } TOP10</h1>
		<section class="rank_category_main">
			
			<ol class="rank_category_board">
			<c:forEach var="res" items="${rank0}" varStatus="res_status">
				<li></li>
				<li class="rank_category_res">
					<c:choose>
						<c:when test="${res_status.index < 4 }">
							<div><img class="rank_category_medal" src="${cpath}/resources/img/rank/ranking${res_status.index + 1}.png"></div>
						</c:when>
						<c:otherwise>
							<div><img class="rank_category_medal" src="${cpath}/resources/img/rank/ranking4.png"></div>
						</c:otherwise>
					</c:choose>
					<a href="#" class="rank_category_topRes">
						<p class="rank_category_block"><!-- <img class="rank_category_img" src="${cpath }/resources/img/ex05.jpg"> --></p>
						<p>${res.name }</p>
						<p>${category[0].name }</p>	
						<div class="rank_category_rating">
							<div class="rank_category_rate_back">
							<!-- db연결 후 width: 별점 -->
					    		<span style="width: ${star_rating}%" class="rank_category_rate_front"></span>
					    	</div>
							<b class="rank_category_score">${res.score }</b>
						</div>
					</a>
				</li>
			</c:forEach>
			</ol>
			<p class="rank_category_toArea" OnClick="location.href ='#'" style="cursor:pointer">내 지역의 ${category[0].name } 맛집 찾으러 가기 →</p>
		</section>
		
		<h1 class="rank_category_title">${category[4].name } TOP10</h1>
		<section class="rank_category_main">
			
			<ol class="rank_category_board">
			<c:forEach var="res" items="${rank0}" varStatus="res_status">
				<li></li>
				<li class="rank_category_res">
					<c:choose>
						<c:when test="${res_status.index < 4 }">
							<div><img class="rank_category_medal" src="${cpath}/resources/img/rank/ranking${res_status.index + 1}.png"></div>
						</c:when>
						<c:otherwise>
							<div><img class="rank_category_medal" src="${cpath}/resources/img/rank/ranking4.png"></div>
						</c:otherwise>
					</c:choose>
					<a href="#" class="rank_category_topRes">
						<p class="rank_category_block"><!-- <img class="rank_category_img" src="${cpath }/resources/img/ex05.jpg"> --></p>
						<p>${res.name }</p>
						<p>${category[0].name }</p>	
						<div class="rank_category_rating">
							<div class="rank_category_rate_back">
							<!-- db연결 후 width: 별점 -->
					    		<span style="width: ${star_rating}%" class="rank_category_rate_front"></span>
					    	</div>
							<b class="rank_category_score">${res.score }</b>
						</div>
					</a>
				</li>
			</c:forEach>
			</ol>
			<p class="rank_category_toArea" OnClick="location.href ='#'" style="cursor:pointer">내 지역의 ${category[0].name } 맛집 찾으러 가기 →</p>
		</section>
		
		<h1 class="rank_category_title">${category[5].name } TOP10</h1>
		<section class="rank_category_main">
			
			<ol class="rank_category_board">
			<c:forEach var="res" items="${rank0}" varStatus="res_status">
				<li></li>
				<li class="rank_category_res">
					<c:choose>
						<c:when test="${res_status.index < 4 }">
							<div><img class="rank_category_medal" src="${cpath}/resources/img/rank/ranking${res_status.index + 1}.png"></div>
						</c:when>
						<c:otherwise>
							<div><img class="rank_category_medal" src="${cpath}/resources/img/rank/ranking4.png"></div>
						</c:otherwise>
					</c:choose>
					<a href="#" class="rank_category_topRes">
						<p class="rank_category_block"><!-- <img class="rank_category_img" src="${cpath }/resources/img/ex05.jpg"> --></p>
						<p>${res.name }</p>
						<p>${category[0].name }</p>	
						<div class="rank_category_rating">
							<div class="rank_category_rate_back">
							<!-- db연결 후 width: 별점 -->
					    		<span style="width: ${star_rating}%" class="rank_category_rate_front"></span>
					    	</div>
							<b class="rank_category_score">${res.score }</b>
						</div>
					</a>
				</li>
			</c:forEach>
			</ol>
			<p class="rank_category_toArea" OnClick="location.href ='#'" style="cursor:pointer">내 지역의 ${category[0].name } 맛집 찾으러 가기 →</p>
		</section>
		
		<h1 class="rank_category_title">${category[6].name } TOP10</h1>
		<section class="rank_category_main">
			
			<ol class="rank_category_board">
			<c:forEach var="res" items="${rank0}" varStatus="res_status">
				<li></li>
				<li class="rank_category_res">
					<c:choose>
						<c:when test="${res_status.index < 4 }">
							<div><img class="rank_category_medal" src="${cpath}/resources/img/rank/ranking${res_status.index + 1}.png"></div>
						</c:when>
						<c:otherwise>
							<div><img class="rank_category_medal" src="${cpath}/resources/img/rank/ranking4.png"></div>
						</c:otherwise>
					</c:choose>
					<a href="#" class="rank_category_topRes">
						<p class="rank_category_block"><!-- <img class="rank_category_img" src="${cpath }/resources/img/ex05.jpg"> --></p>
						<p>${res.name }</p>
						<p>${category[0].name }</p>	
						<div class="rank_category_rating">
							<div class="rank_category_rate_back">
							<!-- db연결 후 width: 별점 -->
					    		<span style="width: ${star_rating}%" class="rank_category_rate_front"></span>
					    	</div>
							<b class="rank_category_score">${res.score }</b>
						</div>
					</a>
				</li>
			</c:forEach>
			</ol>
			<p class="rank_category_toArea" OnClick="location.href ='#'" style="cursor:pointer">내 지역의 ${category[0].name } 맛집 찾으러 가기 →</p>
		</section>
		
		<h1 class="rank_category_title">${category[7].name } TOP10</h1>
		<section class="rank_category_main">
			
			<ol class="rank_category_board">
			<c:forEach var="res" items="${rank0}" varStatus="res_status">
				<li></li>
				<li class="rank_category_res">
					<c:choose>
						<c:when test="${res_status.index < 4 }">
							<div><img class="rank_category_medal" src="${cpath}/resources/img/rank/ranking${res_status.index + 1}.png"></div>
						</c:when>
						<c:otherwise>
							<div><img class="rank_category_medal" src="${cpath}/resources/img/rank/ranking4.png"></div>
						</c:otherwise>
					</c:choose>
					<a href="#" class="rank_category_topRes">
						<p class="rank_category_block"><!-- <img class="rank_category_img" src="${cpath }/resources/img/ex05.jpg"> --></p>
						<p>${res.name }</p>
						<p>${category[0].name }</p>	
						<div class="rank_category_rating">
							<div class="rank_category_rate_back">
							<!-- db연결 후 width: 별점 -->
					    		<span style="width: ${star_rating}%" class="rank_category_rate_front"></span>
					    	</div>
							<b class="rank_category_score">${res.score }</b>
						</div>
					</a>
				</li>
			</c:forEach>
			</ol>
			<p class="rank_category_toArea" OnClick="location.href ='#'" style="cursor:pointer">내 지역의 ${category[0].name } 맛집 찾으러 가기 →</p>
		</section>
		
		<h1 class="rank_category_title">${category[8].name } TOP10</h1>
		<section class="rank_category_main">
			
			<ol class="rank_category_board">
			<c:forEach var="res" items="${rank0}" varStatus="res_status">
				<li></li>
				<li class="rank_category_res">
					<c:choose>
						<c:when test="${res_status.index < 4 }">
							<div><img class="rank_category_medal" src="${cpath}/resources/img/rank/ranking${res_status.index + 1}.png"></div>
						</c:when>
						<c:otherwise>
							<div><img class="rank_category_medal" src="${cpath}/resources/img/rank/ranking4.png"></div>
						</c:otherwise>
					</c:choose>
					<a href="#" class="rank_category_topRes">
						<p class="rank_category_block"><!-- <img class="rank_category_img" src="${cpath }/resources/img/ex05.jpg"> --></p>
						<p>${res.name }</p>
						<p>${category[0].name }</p>	
						<div class="rank_category_rating">
							<div class="rank_category_rate_back">
							<!-- db연결 후 width: 별점 -->
					    		<span style="width: ${star_rating}%" class="rank_category_rate_front"></span>
					    	</div>
							<b class="rank_category_score">${res.score }</b>
						</div>
					</a>
				</li>
			</c:forEach>
			</ol>
			<p class="rank_category_toArea" OnClick="location.href ='#'" style="cursor:pointer">내 지역의 ${category[0].name } 맛집 찾으러 가기 →</p>
		</section>
		
		<h1 class="rank_category_title">${category[9].name } TOP10</h1>
		<section class="rank_category_main">
			
			<ol class="rank_category_board">
			<c:forEach var="res" items="${rank0}" varStatus="res_status">
				<li></li>
				<li class="rank_category_res">
					<c:choose>
						<c:when test="${res_status.index < 4 }">
							<div><img class="rank_category_medal" src="${cpath}/resources/img/rank/ranking${res_status.index + 1}.png"></div>
						</c:when>
						<c:otherwise>
							<div><img class="rank_category_medal" src="${cpath}/resources/img/rank/ranking4.png"></div>
						</c:otherwise>
					</c:choose>
					<a href="#" class="rank_category_topRes">
						<p class="rank_category_block"><!-- <img class="rank_category_img" src="${cpath }/resources/img/ex05.jpg"> --></p>
						<p>${res.name }</p>
						<p>${category[0].name }</p>	
						<div class="rank_category_rating">
							<div class="rank_category_rate_back">
							<!-- db연결 후 width: 별점 -->
					    		<span style="width: ${star_rating}%" class="rank_category_rate_front"></span>
					    	</div>
							<b class="rank_category_score">${res.score }</b>
						</div>
					</a>
				</li>
			</c:forEach>
			</ol>
			<p class="rank_category_toArea" OnClick="location.href ='#'" style="cursor:pointer">내 지역의 ${category[0].name } 맛집 찾으러 가기 →</p>
		</section>
		
		<h1 class="rank_category_title">${category[10].name } TOP10</h1>
		<section class="rank_category_main">
			
			<ol class="rank_category_board">
			<c:forEach var="res" items="${rank0}" varStatus="res_status">
				<li></li>
				<li class="rank_category_res">
					<c:choose>
						<c:when test="${res_status.index < 4 }">
							<div><img class="rank_category_medal" src="${cpath}/resources/img/rank/ranking${res_status.index + 1}.png"></div>
						</c:when>
						<c:otherwise>
							<div><img class="rank_category_medal" src="${cpath}/resources/img/rank/ranking4.png"></div>
						</c:otherwise>
					</c:choose>
					<a href="#" class="rank_category_topRes">
						<p class="rank_category_block"><!-- <img class="rank_category_img" src="${cpath }/resources/img/ex05.jpg"> --></p>
						<p>${res.name }</p>
						<p>${category[0].name }</p>	
						<div class="rank_category_rating">
							<div class="rank_category_rate_back">
							<!-- db연결 후 width: 별점 -->
					    		<span style="width: ${star_rating}%" class="rank_category_rate_front"></span>
					    	</div>
							<b class="rank_category_score">${res.score }</b>
						</div>
					</a>
				</li>
			</c:forEach>
			</ol>
			<p class="rank_category_toArea" OnClick="location.href ='#'" style="cursor:pointer">내 지역의 ${category[0].name } 맛집 찾으러 가기 →</p>
		</section>
		
		<h1 class="rank_category_title">${category[11].name } TOP10</h1>
		<section class="rank_category_main">
			
			<ol class="rank_category_board">
			<c:forEach var="res" items="${rank0}" varStatus="res_status">
				<li></li>
				<li class="rank_category_res">
					<c:choose>
						<c:when test="${res_status.index < 4 }">
							<div><img class="rank_category_medal" src="${cpath}/resources/img/rank/ranking${res_status.index + 1}.png"></div>
						</c:when>
						<c:otherwise>
							<div><img class="rank_category_medal" src="${cpath}/resources/img/rank/ranking4.png"></div>
						</c:otherwise>
					</c:choose>
					<a href="#" class="rank_category_topRes">
						<p class="rank_category_block"><!-- <img class="rank_category_img" src="${cpath }/resources/img/ex05.jpg"> --></p>
						<p>${res.name }</p>
						<p>${category[0].name }</p>	
						<div class="rank_category_rating">
							<div class="rank_category_rate_back">
							<!-- db연결 후 width: 별점 -->
					    		<span style="width: ${star_rating}%" class="rank_category_rate_front"></span>
					    	</div>
							<b class="rank_category_score">${res.score }</b>
						</div>
					</a>
				</li>
			</c:forEach>
			</ol>
			<p class="rank_category_toArea" OnClick="location.href ='#'" style="cursor:pointer">내 지역의 ${category[0].name } 맛집 찾으러 가기 →</p>
		</section>
		
		<h1 class="rank_category_title">${category[12].name } TOP10</h1>
		<section class="rank_category_main">
			
			<ol class="rank_category_board">
			<c:forEach var="res" items="${rank0}" varStatus="res_status">
				<li></li>
				<li class="rank_category_res">
					<c:choose>
						<c:when test="${res_status.index < 4 }">
							<div><img class="rank_category_medal" src="${cpath}/resources/img/rank/ranking${res_status.index + 1}.png"></div>
						</c:when>
						<c:otherwise>
							<div><img class="rank_category_medal" src="${cpath}/resources/img/rank/ranking4.png"></div>
						</c:otherwise>
					</c:choose>
					<a href="#" class="rank_category_topRes">
						<p class="rank_category_block"><!-- <img class="rank_category_img" src="${cpath }/resources/img/ex05.jpg"> --></p>
						<p>${res.name }</p>
						<p>${category[0].name }</p>	
						<div class="rank_category_rating">
							<div class="rank_category_rate_back">
							<!-- db연결 후 width: 별점 -->
					    		<span style="width: ${star_rating}%" class="rank_category_rate_front"></span>
					    	</div>
							<b class="rank_category_score">${res.score }</b>
						</div>
					</a>
				</li>
			</c:forEach>
			</ol>
			<p class="rank_category_toArea" OnClick="location.href ='#'" style="cursor:pointer">내 지역의 ${category[0].name } 맛집 찾으러 가기 →</p>
		</section>
	
</section>	

<script>
	
	const btnArr = document.getElementsByClassName('rank_category_btn');
	const areaArr = document.getElementsByClassName('rank_category_title');
	
	for(let i = 0; i < btnArr.length; i++){

		  btnArr[i].addEventListener('click',function(e){
		    e.preventDefault();
		    areaArr[i].scrollIntoView(true);
		    behavior: 'smooth';
		  });

		}
	
</script>
	
</body>
</html>