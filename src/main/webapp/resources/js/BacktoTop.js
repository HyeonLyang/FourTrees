document.addEventListener('DOMContentLoaded', function() {
    var go_top = document.getElementsByClassName('go-top')[0];

    var backToTop = () => {
        // 스크롤 : 보여주기/숨기기
        window.addEventListener('scroll', () => {
            if (document.querySelector('html').scrollTop > 100) {
                go_top.style.display = 'block';
            } else {
                go_top.style.display = 'none';
            }
        });

        // 실행시 최상단으로 올라가기
        go_top.addEventListener('click', () => {
            window.scrollTo({
                top: 0,
                left: 0,
                behavior: 'smooth'
            });
        });
    };

    backToTop(); // 함수 호출
});
function back(cpath) {
	location.href = cpath + '/myPage/bookmark';
}
/* 삭제할 시 한번 더 묻기 */
function isDelete(idx, cpath, dd) {
	let del = confirm(dd + ' 하시겠습니까?');
	
	if (del) {
		location.href = cpath + '/myPage/delete/' + idx;
	}
}
function isAdmin() {
	alert('관리자 계정이라서 삭제가 불가능합니다')
}
function reviewDel(idx, cpath, res_idx ,name) {
	let del = confirm('이 리뷰를 삭제 하시겠습니까?');
	
	if (del) {
		location.href = cpath + '/review/delete/' + idx + '/' + name + '/' + res_idx;
	}

}
