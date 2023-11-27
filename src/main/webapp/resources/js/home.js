// JQuery 없이 순수 이벤트 리스너로 헤더 색 변경 기능 구현
window.addEventListener('scroll', function() {
    var header = document.querySelector('header');
    var scrollY = window.scrollY;

    if (scrollY > 0) {
        header.classList.add('active');
    } else {
        header.classList.remove('active');
    }

    // 추가로 800 픽셀 스크롤 시의 처리
    if (scrollY >= 800) {
        header.classList.add('scrolled');
    } else {
        header.classList.remove('scrolled');
    }
});