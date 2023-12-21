/* 헤더 메뉴아이콘 토글 */
var menu_container = document.getElementsByClassName("menu_container")[0];
var sub_container = document.getElementsByClassName("sub_container")[0];
var isOpen = false;

function toggle3() {
    isOpen = !isOpen;
    menu_container.style.overflow = isOpen ? "visible" : "hidden";
    sub_container.style.overflow = isOpen ? "visible" : "hidden";
}