/*!
* Start Bootstrap - Shop Item v5.0.6 (https://startbootstrap.com/template/shop-item)
* Copyright 2013-2023 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-shop-item/blob/master/LICENSE)
*/
// This file is intentionally blank
// Use this file to add JavaScript to your project

var expandButton = document.getElementById('navbarDropdown');

// 버튼 클릭 시 "aria-expanded" 속성 변경
expandButton.addEventListener('click', function() {
    var currentState = expandButton.getAttribute('aria-expanded');
    var newState = (currentState === 'true') ? 'false' : 'true';
    expandButton.setAttribute('aria-expanded', newState);
});