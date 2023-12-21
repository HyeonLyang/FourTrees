<<<<<<< HEAD
=======

// 옵션 변경 시 이벤트 리스너 추가
document.getElementById("type").addEventListener("change", function () {
	var type = this.value; // 선택된 옵션의 값
	
	// input의 name 동적으로 변경
	document.getElementById("submit_type").setAttribute("name", type);
});

>>>>>>> origin/master
/* 헤더2 검색창 토글 */
var sc_con = document.getElementsByClassName("sc_con")[0];
var isOpen = false;

function toggleSearch() {
    isOpen = !isOpen;
    sc_con.style.width = isOpen ? "370px" : "50px";
}

/* 헤더2 번역기능 토글 */
var languageContainer = document.getElementsByClassName("language-container")[0];
var isOpen = false;

function toggle2() {
    isOpen = !isOpen;
    languageContainer.style.width = isOpen ? "300px" : "55px";
}

/* 헤더2 메뉴아이콘 토글 */
var menu_container = document.getElementsByClassName("menu_container")[0];
<<<<<<< HEAD
var sub_container = document.getElementsByClassName("sub_container")[0];
=======
>>>>>>> origin/master
var isOpen = false;

function toggle3() {
    isOpen = !isOpen;
    menu_container.style.overflow = isOpen ? "visible" : "hidden";
<<<<<<< HEAD
    sub_container.style.overflow = isOpen ? "visible" : "hidden";
=======
>>>>>>> origin/master
}





<<<<<<< HEAD
=======

>>>>>>> origin/master
