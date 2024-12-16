/* examples:
$$('.button').map(el => el.on('click', console.log))
$('body').on('mouseenter', console.log) */

Node.prototype.on = Node.prototype.addEventListener
window.$ = document.querySelector.bind(document)
window.$$ = (...a) => Array.from(document.querySelectorAll(...a))
