// 페이지 접근시 and GET 호출시 사용할 함수
function ranking(reqCate) { 
		
		fetch(url + `?idx=${reqCate}`, { method: 'GET' })
		.then(response => response.json())
		.then(data => {
			dt = data;
		
			let result = document.querySelectorAll('.rank_category_board')[0];
			result.innerHTML = '';
			
			for (let i = 0; i < 10; i++) {
				let li = document.createElement('li');
				log.console(res.name)
				
				li.innerHTML = 
					'<li class="rank_category_res">' +
						`<div><img class="rank_category_medal" src="${cpath}/resources/img/rank/medal${rank[status.index]}.png"></div>` +
						'<a href="#" class="rank_category_topRes">' +
							'<p class="rank_category_block"></p>' +
							'<p>' + res.name + '</p>' +
							'<p>' + res.category + '</p>' +
							'<div class="rank_category_rating">' +
								'<div class="rank_category_rate_back">' +
							    	`<span style="width: ${star_rating}%" class="rank_category_rate_front"></span>` +
							    '</div>' +
								'<b class="rank_category_score">' + res.score + '</b>' +
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




