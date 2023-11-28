<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>	
<link rel="stylesheet" href="${cpath }/resources/css/account/myPage.css">

<article>
    <hr>
        <div class="headline">
            <p><a href="${cpath }">홈</a></p>
            <p><a href="${cpath }/myPage/password" style="color: #87553d;">내 정보</a></p>
            <p><a href="${cpath }/myPage/bookmark">북마크</a></p>
            <p><a href="${cpath }/myPage/myReply">댓글</a></p>
            <p><a href="${cpath }/support/QNA">고객센터</a></p>
        </div>
    <hr>
</article>
<article>
	<form class="myPage_UD" method="POST">
		<h3>내정보</h3>
		<table class="boards" style="width: 100%;" >			
			<tr>
				<th>아이디</th>
				<td>${user.userid }</td>
			</tr>
			<tr>
				<th>패스워드</th>
				<td><input name="userpw" type="password" required></td>
			</tr>
			<tr>
				<th>닉네임</th>
				<td>${user.nick }</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>${user.email }</td>
			</tr>
			<tr>
				<th>가입날짜</th>
				<td>${user.join_date }</td>
			</tr>
		</table>
		
		<p>
			<button>회원수정</button>
			<button type="button" onclick="isDelete(${user.idx }, '${cpath }')">회원탈퇴</button> 
		</p>
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
</script>
<%@ include file="../footer.jsp" %>
</body>
</html>