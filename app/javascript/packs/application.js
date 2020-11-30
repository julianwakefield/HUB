// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { castParallax } from '../components/castParallax';
import { initChatCable } from "../channels/chat_channel";
import { carousel } from "../components/carousel";

// import { carouseltest1 } from "../components/function"; this is not used
// import { carouseltest2 } from "../components/function"; this is not used


// import { background } from '../channels/background'
document.addEventListener('turbolinks:load', () =>{
	// castParallax(); whta is this for?
	initChatCable();
	carousel();
});











const scrollToTopButton = document.getElementById('js-top');
const scrollFunc = () => {
  let y = window.scrollY;
  if (y > 0) {
    scrollToTopButton.className = "top-link show";
  } else {
    scrollToTopButton.className = "top-link hide";
  }
};
window.addEventListener("scroll", scrollFunc);
const scrollToTop = () => {
  const c = document.documentElement.scrollTop || document.body.scrollTop;
  if (c > 0) {
    window.requestAnimationFrame(scrollToTop);
    window.scrollTo(0, c - c / 10);
  }
};

scrollToTopButton.onclick = function(e) {
  e.preventDefault();
  scrollToTop();
}

////////////////////////////////////////////////////
const loginBtn = document.getElementById('login');
const signupBtn = document.getElementById('signup');
if (loginBtn){

	loginBtn.addEventListener('click', (e) => {
		let parent = e.target.parentNode.parentNode;
		Array.from(e.target.parentNode.parentNode.classList).find((element) => {
			if(element !== "slide-up") {
				parent.classList.add('slide-up')
			}else{
				signupBtn.parentNode.classList.add('slide-up')
				parent.classList.remove('slide-up')
			}
		});
	});
}

if (signupBtn){

	signupBtn.addEventListener('click', (e) => {
		let parent = e.target.parentNode;
		Array.from(e.target.parentNode.classList).find((element) => {
			if(element !== "slide-up") {
				parent.classList.add('slide-up')
			}else{
				loginBtn.parentNode.parentNode.classList.add('slide-up')
				parent.classList.remove('slide-up')
			}
		});
	});
}
////////////////////////////////////////////////////






