
const hamburger = document.getElementById('js-hamburger');
const hamburgerClose = document.getElementById('js-hamburger-close');
const fullScreenNav = document.getElementById('full-screen-nav');

hamburger.addEventListener('click', () => {
    fullScreenNav.classList.remove('d-none');
});

hamburgerClose.addEventListener('click', () => {
    fullScreenNav.classList.add('d-none');
});
