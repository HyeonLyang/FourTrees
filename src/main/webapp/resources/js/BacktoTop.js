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