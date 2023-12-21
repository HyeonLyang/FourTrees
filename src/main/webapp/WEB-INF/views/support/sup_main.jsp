<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<link rel="stylesheet" href="${cpath }/resources/css/support/support.css">
<link rel="stylesheet" href="${cpath }/resources/css/account/myPage.css">


<article class="art">
	<div class="profile">
		<div class="pro_img">
			<img src="${cpath }/resources/img/review/기본 프로필.jpg">
			<div class="nick">			
				<h3>${user.nick }</h3>
				<h4>${user.nick }님 환영합니다</h4>
			</div>
		</div>		
		<div class="profile_modify">
			<a href="${cpath }/myPage/password">			
				<img src="${cpath }/resources/img/review/review_write.png" 
				style="width: 70px;">
			</a>
		</div>
	</div>
	
    <div class="headline">
    	 <p><a href="${cpath }">홈</a></p>         
         <p><a href="${cpath }/myPage/bookmark">북마크</a></p>
         <p><a href="${cpath }/myPage/myReply">댓글</a></p>
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
	</div>
</section>

</body>
</html>
