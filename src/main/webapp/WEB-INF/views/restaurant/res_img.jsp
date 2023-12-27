<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>	<!-- 헤더 추가 -->
<link href="${cpath }/resources/css/res_css/res_img_style.css" rel="stylesheet"> <!-- css적용 -->

<section class="res_img">

<%@ include file="res_header.jsp" %>


	<section class="res_detail_menu">

		<p OnClick="location.href ='${cpath }/restaurant/res_detail/${res.idx }'" style="cursor:pointer">
			TOP
		</p>
		<p style="background-color: #FFDACC">
			<a>사진</a>
		</p>
		<p OnClick="location.href ='${cpath }/restaurant/res_review/${res.idx }'" style="cursor:pointer">
			리뷰
		</p>
		<p OnClick="location.href ='${cpath }/restaurant/res_map/${res.idx }'" style="cursor:pointer">
			확대지도
		</p>

	</section>
	
	<section class="res_img_main">
		<section class="res_img_con">
			<h4 class="res_img_title">최근 리뷰의 사진</h4>
			<section class="res_img_list">
				<c:forEach var="photo" items="${photo_list }">
					<div>
						<img src="${cpath }/img/${photo.res_name}/${photo.img_path}">
						<p class="res_img_writer">(by ${photo.nick })</p>
					</div>
				</c:forEach>
			</section>
			<p OnClick="location.href ='${cpath}/photo/photo_main'" style="cursor:pointer" class="res_img_toImgBoard">
				사진 전체보기 ->
			</p>
		</section>
		<aside>
			<img src="${cpath }/resources/img/restaurant/res_AD.jpg" class="res_img_ad">
		</aside>

	</section>

</section>

<script>
    // 모달 열기 함수
    function openModal(imgSrc) {
        const modal = document.createElement('div');
        modal.classList.add('modal');
        
        const img = document.createElement('img');
        img.src = imgSrc;
        img.classList.add('modal-content');

        modal.appendChild(img);
        document.body.appendChild(modal);

        // 모달 외부 클릭 시 모달 닫기
        modal.addEventListener('click', () => {
            modal.remove();
        });
    }

    // 이미지를 클릭했을 때 모달 열기
    document.addEventListener('DOMContentLoaded', function () {
        const images = document.querySelectorAll('.res_img_list img');
        images.forEach(image => {
            image.addEventListener('click', function () {
                openModal(this.src);
            });
        });
    });
</script>

</body>
</html>