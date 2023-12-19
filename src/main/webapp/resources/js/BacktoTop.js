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

document.addEventListener("DOMContentLoaded", function () {
    var remoteButtons = document.querySelectorAll(".remote_button");
    var remotes = document.querySelectorAll(".remote");

    remoteButtons.forEach(function(remoteButton, index) {
        remoteButton.addEventListener("click", function () {
            // 토글 리모트의 표시/숨김 상태 변경
            if (remotes[index].style.display === "none" || remotes[index].style.display === "") {
                remotes[index].style.display = "block";
            } else {
                remotes[index].style.display = "none";
            }
        });
    });
});