window.onload = function() {
	var swiper = new Swiper(".mySwiper", {
	    pagination: {
	      el: ".swiper-pagination",
	    },
		autoplay: {
          delay: 3500,
          disableOnInteraction: false,
        },
	});
};
