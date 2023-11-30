let left = document.querySelectorAll('.left')[0];
let right = document.querySelectorAll('.right')[0];
let img = document.querySelectorAll('.food_img')[0];
	
	left.onclick = () => {		
		img.animate(
		{			
			transform: [
				'translateX(0px)'			
			]
		},
		{
	       duration: 500, // 밀리초 지정
	       fill: 'forwards', // 종료 시 속성을 지님
	       easing: 'ease' // 가속도 종류
	    }
		);
	}
	
	right.onclick = () => {		
		img.animate(
		{			
			transform: [				
				'translateX(-1000px)'
			]
		},
		{
	       duration: 500, // 밀리초 지정
	       fill: 'forwards', // 종료 시 속성을 지님
	       easing: 'ease' // 가속도 종류
	    }
		);
	}	