<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<link rel="stylesheet" href="${cpath }/resources/css/support/support.css">
<link rel="stylesheet" href="${cpath }/resources/css/account/myPage.css">


<article class="art">
	<div class="profile">
		<div class="pro_img">
<<<<<<< HEAD
			<img src="${cpath }/resources/img/review/기본 프로필.jpg">
			<div class="nick">			
				<h3>${user.nick }</h3>
=======
			<a href="${cpath }/myPage/img_change">			
				<img src="${cpath }/img/account/${user.img}"><br>
				<span>프로필 사진 변경</span>
			</a>
			<!-- <input name="upload" type="file" value="+"> --> 
			<div class="nick">			
				<h3>${user.nick } (${user.status })</h3>
>>>>>>> origin/master
				<h4>${user.nick }님 환영합니다</h4>
			</div>
		</div>		
		<div class="profile_modify">
			<a href="${cpath }/myPage/password">			
				<img src="${cpath }/resources/img/review/review_write.png" 
<<<<<<< HEAD
				style="width: 70px;">
=======
				style="width: 70px;"><br>
				<span style="font-size: 15px">회원정보수정</span>
>>>>>>> origin/master
			</a>
		</div>
	</div>
	
    <div class="headline">
    	 <p><a href="${cpath }">홈</a></p>         
         <p><a href="${cpath }/myPage/bookmark">북마크</a></p>
         <p><a href="${cpath }/myPage/myReply">댓글</a></p>
<<<<<<< HEAD
=======
         <c:if test="${user.status == '관리자' }">
         	<p><a href="${cpath }/myPage/admin">회원 관리</a></p>
         </c:if>
>>>>>>> origin/master
         <p>
         	<a href="${cpath }/support/sup_main" style="color: #ff7f50;">고객센터 -</a>
         	<div class="sup_tag">
				<ul>
					<li><a href="${cpath }/support/notice">공지사항(NOTICE)</a></li>
					<li><a href="${cpath }/support/FAQ">자주묻는질문(FAQ)</a></li>
					<li><a href="${cpath }/support/QNA">고객센터(Q&A)</a></li>
				</ul>
			</div>
<<<<<<< HEAD
         </p>
=======
         </p>         
>>>>>>> origin/master
    </div>
</article>
<section class="sup_main">
	<div>
<<<<<<< HEAD
		<p class="sup_title">
			<a href="${cpath }/support/sup_main">SUPPORT</a>
		</p>
=======
		<div class="sup_title"><a href="${cpath }/support/sup_main">고객센터</a></div>
	</div>
	<div>
		<div class="sup_search">
			<input placeholder="세부 검색">
			<a href="${cpath }/support/search"><img src="${cpath }/resources/img/support/btn.png"></a>
		</div>
	</div>
	<div>
		<div class="sup_link">1:1 문의하기</div>
>>>>>>> origin/master
	</div>
</section>

</body>
</html>
