/* 헤더2 번역기능 토글 */
var languageContainer = document.getElementsByClassName("language-container")[0];
var isOpen = false;

function toggle2() {
    isOpen = !isOpen;
    languageContainer.style.width = isOpen ? "350px" : "55px";
}

/* 헤더 메뉴아이콘 토글 */
var menu_container = document.getElementsByClassName("menu_container")[0];
var sub_container = document.getElementsByClassName("sub_container")[0];
var isOpen = false;

function toggle3() {
    isOpen = !isOpen;
    menu_container.style.overflow = isOpen ? "visible" : "hidden";
    sub_container.style.overflow = isOpen ? "visible" : "hidden";
}