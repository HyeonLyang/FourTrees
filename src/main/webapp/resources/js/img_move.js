let btns = document.querySelectorAll('button');
	let img = document.querySelectorAll('.food_img')[0];
	
	btns[1].onclick = () => {		
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
	
	btns[2].onclick = () => {		
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
	
function openPopup(cpath) {
	window.open(cpath + '/review/img_popup', 
				"new", 
				"toolbar=no, menubar=no, scrollbars=yes, resizable=no, " +
				"width=800, height=850, left=300, top=30" );
}	