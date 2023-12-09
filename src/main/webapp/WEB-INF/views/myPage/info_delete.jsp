<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="${cpath }/resources/css/account/myPage.css">

<article class="myPage_art">
	<div class="profile">
		<div class="pro_img">
			<img src="${cpath }/resources/img/review/기본 프로필.jpg">
			<div class="nick">			
				<h3>${user.nick }</h3>
				<h4>${user.nick }님 환영합니다</h4>
			</div>
		</div>				
	</div>
	
    
    <div class="headline" style="margin-bottom: 40px;">	    	
		<p><a href="${cpath }/myPage/info">회원정보변경</a></p>
		<p><a href="${cpath }/myPage/info_pw_change">비밀번호변경</a></p>
		<p><a href="${cpath }/myPage/info_delete" style="color: #ff7f50;">회원탈퇴</a></p>     
    </div>

	<form class="myPage_UD" method="POST">
		<div class="delete_caution">
			<h2>회원 탈퇴 신청 시 아래 사항을 반드시 확인해주세요.</h2>
			
			<ol>
				<li>
					<b>해당 휴대폰번호로 30일간 재가입 불가능</b>
					<h5>회원탈퇴를 신청하시면 해당 닉네임은 즉시 탈퇴 처리되며 
					기존에 사용하던 휴대폰번호로는 30일 동안 재가입이 불가합니다.</h5>
				</li>
				<li>
					<b>회원정보 및 게시물 삭제</b>
					<h5>
						회원탈퇴 즉시 아래에 해당하는 개인정보가 삭제됩니다.<br>
						개인정보 : 이메일 계정, 비밀번호, 휴대폰번호, 생일, 성별 정보 삭제
					</h5>
				</li>
			</ol>							
		</div>
		
		<div class="save_cancel">
			<button type="button" onclick="back('${cpath }')">취소</button>
			<button type="button" onclick="isDelete(${user.idx },'${cpath }')">탈퇴하기</button>
		</div>
	</form>
</article>
<script>
	/* 삭제할 시 한번 더 묻기 */
	function isDelete(idx, cpath) {
		let del = confirm('탈퇴 하시겠습니까?');
		
		if (del) {
			location.href = cpath + '/myPage/delete/' + idx;
		}
	}
	
	function back(cpath) {
		location.href = cpath + '/myPage/bookmark';
	}
</script>
<%@ include file="../footer.jsp" %>
</body>
</html>