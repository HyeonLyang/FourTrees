<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="${cpath }/resources/css/review.css">
<section class="review_write_main">
	<form class="review_write_write" method="POST" enctype="multipart/form-data">
		<table class="review_table">
			<tr>
				<th><label for="writer">작성자</label></th>
				<td><input name="writer" id="writer" required></td>				
			</tr>
			<tr>
				<th><label for="visit_date">방문일</label></th>				
				<td><input name="visit_date" type="date" required></td>				
			</tr>
			<tr>
				<th><label for="score">별점</label></th>				
				<td>
					<div class="starpoint_wrap">
		        		<div class="starpoint_box">
		          			  <label for="starpoint_1" class="label_star" title="0.5">
		          			  	<span class="blind">0.5</span>
		          			  </label>
					          <label for="starpoint_2" class="label_star" title="1">
					          	<span class="blind">1</span>
					          </label>
					          <label for="starpoint_3" class="label_star" title="1.5">
					          	<span class="blind">1.5</span>
					          </label>
					          <label for="starpoint_4" class="label_star" title="2">
					          	<span class="blind">2</span>
					          </label>
					          <label for="starpoint_5" class="label_star" title="2.5">
					          	<span class="blind">2.5</span>
					          </label>
					          <label for="starpoint_6" class="label_star" title="3">
					          	<span class="blind">3</span>
					          </label>
					          <label for="starpoint_7" class="label_star" title="3.5">
					          	<span class="blind">3.5</span>
					          </label>
					          <label for="starpoint_8" class="label_star" title="4">
					          	<span class="blind">4</span>
					          </label>
					          <label for="starpoint_9" class="label_star" title="4.5">
					          	<span class="blind">4.5</span>
					          </label>
					          <label for="starpoint_10" class="label_star" title="5">
					          	<span class="blind">5</span>
					          </label>
					          <input type="radio" name="starpoint" id="starpoint_1" class="star_radio">
					          <input type="radio" name="starpoint" id="starpoint_2" class="star_radio">
					          <input type="radio" name="starpoint" id="starpoint_3" class="star_radio">
					          <input type="radio" name="starpoint" id="starpoint_4" class="star_radio">
					          <input type="radio" name="starpoint" id="starpoint_5" class="star_radio">
					          <input type="radio" name="starpoint" id="starpoint_6" class="star_radio">
					          <input type="radio" name="starpoint" id="starpoint_7" class="star_radio">
					          <input type="radio" name="starpoint" id="starpoint_8" class="star_radio">
					          <input type="radio" name="starpoint" id="starpoint_9" class="star_radio">
					          <input type="radio" name="starpoint" id="starpoint_10" class="star_radio">
					          <span class="starpoint_bg"></span>					          
        				</div>
      				</div>
				</td>				
			</tr>						
			<tr>
				<td colspan="2"><textarea name="content"></textarea></td>
			</tr>
			<tr>
				<th>음식 사진</th>
				<td>
					<input name="upload" type="file">
					<input name="score" type="hidden">
					<input name="res_idx" type="hidden" value="1001">
				</td>
			</tr>
		</table>
		
		<button>작성</button>		
	</form>
</section>
<script>
	const score = document.getElementsByName('score')[0];
	const starpoint = document.getElementsByClassName('starpoint_box')[0];
		
	starpoint.onclick = () => {
		var star = document.querySelectorAll('.starpoint_bg')[0].clientWidth;
		
		score.value = star / 24;
	}	
			
		
	
</script>
</body>
</html>