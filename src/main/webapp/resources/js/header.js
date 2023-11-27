	// javascript - html 선택하는 방법
	$(window).on('scroll',function(){
        if($(window).scrollTop()){
            $('header').addClass('active');
        }else{
            $('header').removeClass('active');
        }
    });
	
	
    // scroll 하면 생기는 이벤트 리스너 
    // -> 800만큼 스크롤하면 classList의 속성을 더해준다(css에 추가하면 적용됨)
    window.addEventListener('scroll', function() {
        var header = document.querySelector('header');
        var scrollY = window.scrollY;

        if (scrollY >= 800) {
            header.classList.add('scrolled');
        } else {
            header.classList.remove('scrolled');
        }
    });