<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<script src="https://cdn.tiny.cloud/1/bmpz83s4yqa4fgfuozripnlgp9hjdztmwwmpnqkfnjhs8r39/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>
<link rel="stylesheet" href="${cpath }/resources/css/review.css">
<section class="review_write_main">
	<form class="review_write_write" method="POST" enctype="multipart/form-data">
		<table class="review_table">
			<tr>
				<th><label for="writer">작성자</label></th>
				<td><input name="writer" id="writer" value="${user.nick }" required readonly></td>				
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
				<td colspan="2">
					<textarea name="content" id="content"></textarea>
				</td>
			</tr>
			<tr>
				<th>음식 사진</th>
				<td>
					<input name="upload" type="file" required>
					<input name="score" type="hidden">
					<input name="res_idx" type="hidden" value="${res_idx }">					
				</td>
			</tr>
		</table>
		
		<button id="write">작성</button>		
	</form>
</section>
<script>
	const score = document.getElementsByName('score')[0];
	const starpoint = document.getElementsByClassName('starpoint_box')[0];	
	
	starpoint.onclick = () => {
		var star = document.querySelectorAll('.starpoint_bg')[0].clientWidth;
		score.value = star / 24;
	}
	
	document.addEventListener("DOMContentLoaded", function() {
	    var starButtons = document.querySelectorAll(".star_radio");
	    var submitButton = document.getElementById("write"); // 대체 필요

	    submitButton.addEventListener("click", function(event) {
	        var selectedStar = Array.from(starButtons).find(button => button.checked);

	        if (!selectedStar) {
	            event.preventDefault(); // 페이지 전환을 막습니다.
	            alert("별점을 선택해주세요.");
	        }
	        else {	        	
	        }
	    });
	});
	
	tinymce.init({
	    selector: '#content',
	    plugins: 'anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount',
	    toolbar: 'undo redo | blocks fontfamily fontsize | bold italic underline strikethrough | link image media table | align lineheight | numlist bullist indent outdent | emoticons charmap | removeformat',
	    setup: function (editor) {
	        editor.on('init', function () {
	            // 에디터가 초기화된 후 실행되는 코드
	            const content = editor.getContent();
	            const modifiedContent = content.replace(/<p>/g, '').replace(/<\/p>/g, '');
	            console.log("TinyMCE Content:", modifiedContent);
	        });
	    }
	});
	
	/* if (tinymce.activeEditor) {
		
		const content  = tinyMCE.activeEditor.getContent();
		content = content.replace(/<p>/g, '').replace(/<\/p>/g, '');
		
		console.log("TinyMCE Content:", content);
	}
	else {
		console.error("TinyMCE 에디터가 아직 초기화되지 않았습니다.");
	} */	
</script>
</body>
</html>