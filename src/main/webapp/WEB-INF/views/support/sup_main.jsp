<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<link rel="stylesheet" href="${cpath }/resources/css/support/support.css">
<link rel="stylesheet" href="${cpath }/resources/css/account/myPage.css">


<article class="art">
	<div class="profile">
		<div class="pro_img">
			<a href="${cpath }/myPage/img_change">			
				<img src="${cpath }/img/account/${user.img}"><br>
				<span>프로필 사진 변경</span>
			</a>
			<!-- <input name="upload" type="file" value="+"> --> 
			<div class="nick">			
				<h3>${user.nick } (${user.status })</h3>
				<h4>${user.nick }님 환영합니다</h4>
			</div>
		</div>		
		<div class="profile_modify">
			<a href="${cpath }/myPage/password">			
				<img src="${cpath }/resources/img/review/review_write.png" 
				style="width: 70px;"><br>
				<span style="font-size: 15px">회원정보수정</span>
			</a>
		</div>
	</div>
	
    <div class="headline">
    	 <p><a href="${cpath }">홈</a></p>         
         <p><a href="${cpath }/myPage/bookmark">북마크</a></p>
         <p><a href="${cpath }/myPage/myReply">댓글</a></p>
         <c:if test="${user.status == '관리자' }">
         	<p><a href="${cpath }/myPage/admin">회원 관리</a></p>
         </c:if>
         <p>
         	<a href="${cpath }/support/sup_main" style="color: #ff7f50;">고객센터 -</a>
         	<div class="sup_tag">
				<ul>
					<li><a href="${cpath }/support/notice">공지사항(NOTICE)</a></li>
					<li><a href="${cpath }/support/FAQ">자주묻는질문(FAQ)</a></li>
					<li><a href="${cpath }/support/QNA">고객센터(Q&A)</a></li>
				</ul>
			</div>
         </p>         
    </div>
</article>
<section class="sup_main">
	<div>
		<p class="sup_title">
			<a href="${cpath }/support/sup_main">SUPPORT</a>
		</p>
	</div>
</section>

</body>
</html>
