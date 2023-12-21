<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<link href="${cpath }/resources/css/photo_css/photo_main_style.css" rel="stylesheet">
<!-- css 폴더안에 정리해주세요 -->


<section class="photo_main">
	
	<section class="photo_main_con">
		<ol class="photo_main_list">
			<c:forEach var="photo" items="${img_list }">
					<li class="photo_main_rev">
						<img src="${cpath }/img/${photo.res_name }/${photo.img_path }">
						<p>by ${photo.nick }</p>
					</li>
			</c:forEach>
		</ol>
	</section>
	
	<!-- 기존 코드에 추가될 HTML -->
	<div id="myModal" class="modal">
	  <span class="close">&times;</span>
	  <img class="modal-content" id="modalImg">
	</div>
	
	
</section>

<script>
	//JavaScript 코드
	//이미지를 클릭했을 때 모달 열기
	var modal = document.getElementById('myModal');
	var modalImg = document.getElementById("modalImg");
	var closeButton = document.querySelector(".close");
	
	//이미지 목록
	var images = document.querySelectorAll('.photo_main_rev img');
	images.forEach(function(img) {
	img.onclick = function() {
	 modal.style.display = "block";
	 modalImg.src = this.src;
	 closeButton.style.display = "block"; // 버튼 보이기
	}
	});
	
	//모달 닫기
	closeButton.onclick = function() {
	modal.style.display = "none";
	}

</script>
	
</body>
</html>