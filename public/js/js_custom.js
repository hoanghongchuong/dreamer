$(document).ready(function()
				  {
	"use strict";
	/*fix menu sub*/
	jQuery("#nav li.level0 li").mouseover(function(){
		if(jQuery(window).width() >= 740){
			jQuery(this).children('ul').css({top:0,left:"185px"});
			var offset = jQuery(this).offset();
			if(offset && (jQuery(window).width() < offset.left+325)){
				jQuery(this).children('ul').removeClass("right-sub");
				jQuery(this).children('ul').addClass("left-sub");
				jQuery(this).children('ul').css({top:0,left:"-185px"});
			} else {
				jQuery(this).children('ul').removeClass("left-sub");
				jQuery(this).children('ul').addClass("right-sub");
			}
			jQuery(this).children('ul').fadeIn(100);
		}
	}).mouseleave(function(){
		if(jQuery(window).width() >= 740){
			jQuery(this).children('ul').fadeOut(100);
		}
	});				
	$('.button-1').click(function(){
		$('.sortby-1').slideToggle('fast')	
	});
	$('.button-2').click(function(){
		$('.sortby-2').slideToggle('fast')	
	});
	$('#field_work_nav_list_action').slider({ slideBackId: 'icon_prev', slideNextId: 'icon_next' });
	  /* SlideShow OWL */


	  $(".owl-brands").owlCarousel({
		navigation: false,
		items:6,
		slideSpeed : 200,
		paginationSpeed : 800,
		rewindSpeed : 1000,
		pagination:false,
		autoPlay : true,
		itemsCustom:[[480,2],[320,2],[768,3],[767,3],[991,4],[1200,6]],
		responsive:true,
		navigationText:false
	});

	$(".owl-field-work").owlCarousel({
		navigation: true,
		items:3,
		slideSpeed : 200,
		paginationSpeed : 800,
		rewindSpeed : 1000,
		//Autoplay
		autoPlay : true,
		itemsCustom:[[480,2],[320,1],[768,2],[767,2],[991,2],[1200,3]],
		responsive:true,
		navigationText: [
			"<a class='flex-prev-slideshow'><i class='fa fa-caret-left'></i></a>",
			"<a class='flex-next-slideshow'><i class='fa fa-caret-right'></i></a>"
		]
	});
	$(".owl-list-field-work").owlCarousel({
		navigation: true,
		items:9,
		itemsCustom:[[480,2],[320,1],[768,3],[767,3],[991,5],[1200,9]],
		responsive:true,
		pagination:false,
		navigationText: [
			"<a class='flex-prev-slideshow'><i class='fa fa-caret-left'></i></a>",
			"<a class='flex-next-slideshow'><i class='fa fa-caret-right'></i></a>"
		]
	}); 
	   
});

// FeedBack Slide //
$(document).ready(function() {

  var sync1 = $("#sync1");
  var sync2 = $("#sync2");
  var slidesPerPage = 4; //globaly define number of elements per page
  var syncedSecondary = true;

  sync1.owlCarousel({
    items : 1,
    slideSpeed : 2000,
    nav: false,
    pagination:false,
    autoplay: true,
    dots: false,
    loop: true,
    responsiveRefreshRate : 200,
    navText: ['<svg width="100%" height="100%" viewBox="0 0 11 20"><path style="fill:none;stroke-width: 1px;stroke: #000;" d="M9.554,1.001l-8.607,8.607l8.607,8.606"/></svg>','<svg width="100%" height="100%" viewBox="0 0 11 20" version="1.1"><path style="fill:none;stroke-width: 1px;stroke: #000;" d="M1.054,18.214l8.606,-8.606l-8.606,-8.607"/></svg>'],
  }).on('changed.owl.carousel', syncPosition);

  sync2
    .on('initialized.owl.carousel', function () {
      sync2.find(".owl-item").eq(0).addClass("current");
    })
    .owlCarousel({
    items : 3,
    dots: false,
    nav: false,
    smartSpeed: 200,
    slideSpeed : 500,
    slideBy: slidesPerPage, //alternatively you can slide by 1, this way the active slide will stick to the first item in the second carousel
    responsiveRefreshRate : 100,
	  responsive: {
		0: {
			items: 1
		},
		768: {
			items: 2
		},
		992: {
			items: 3
		},
		1300: {
			items: 3,
			margin: 0
		},
		1590: {
			items: 3,
			margin: 0
		}
	}
  }).on('changed.owl.carousel', syncPosition2);

  function syncPosition(el) {
    //if you set loop to false, you have to restore this next line
    //var current = el.item.index;
    
    //if you disable loop you have to comment this block
    var count = el.item.count-1;
    var current = Math.round(el.item.index - (el.item.count/2) - .5);
    
    if(current < 0) {
      current = count;
    }
    if(current > count) {
      current = 0;
    }
    
    //end block

    sync2
      .find(".owl-item")
      .removeClass("current")
      .eq(current)
      .addClass("current");
    var onscreen = sync2.find('.owl-item.active').length - 1;
    var start = sync2.find('.owl-item.active').first().index();
    var end = sync2.find('.owl-item.active').last().index();
    
    if (current > end) {
      sync2.data('owl.carousel').to(current, 100, true);
    }
    if (current < start) {
      sync2.data('owl.carousel').to(current - onscreen, 100, true);
    }
  }
  
  function syncPosition2(el) {
    if(syncedSecondary) {
      var number = el.item.index;
      sync1.data('owl.carousel').to(number, 100, true);
    }
  }
  
  sync2.on("click", ".owl-item", function(e){
    e.preventDefault();
    var number = $(this).index();
    sync1.data('owl.carousel').to(number, 300, true);
  });
});

$(document).ready(function(){
	$('.search_form_icon').click(function(){
		$('.search-form').slideToggle('slow');
	});
	






}); 
// Fancybox Video Iframe Youtube Page
$(document).ready(function() {
	$(".fancybox_video")
		.fancybox({
		padding     : 0,
		margin      : [20, 60, 20, 60],
		maxWidth  : 1000,
		maxHeight : 900,
		fitToView : true,
		scrolling : true,
		openEffect  : 'elastic',
		closeEffect : 'elastic',
		width   : '70%',
		height    : '90%',
		autoSize  : false,
		closeClick  : false,
		helpers:  {
			title:  null
		}
	});
});



$(document).ready(function(){
	$('[data-toggle="tooltip"]').tooltip(); 
});

// Scroll To Top
$(document).ready(function(){
	$(".icon_scrolltop").click(function(event){
		$('html, body').animate({ scrollTop: 0 }, 3000);
	});
	// Hide,Show ScrollToTop
	var num = 100;  
	$(window).bind('scroll', function () {
		if ($(window).scrollTop() > num) {   
			$('.scrolltop').addClass('fixed');
		}
		else
		{
			$('.scrolltop').removeClass('fixed');
		}
	});
}); 
// End Scroll To Top 

// Menu mobile
$(document).ready(function() {
	/*
    var removeClass = true;
    $menuLeft = $('.menu_mobile_pushmenu_left');
    $nav_list = $('.menu_mobile_button');

    $nav_list.click(function(e) {
        $(this).toggleClass('active');
        $menuLeft.toggleClass('pushmenu-open');
        removeClass = false;
    });

    $('html').click(function () {
          if (removeClass) {
              $('.menu_mobile_pushmenu_left').removeClass('pushmenu-open');
               $('.menu_mobile_button').removeClass('active');
          }
          removeClass = true;
    });

    $('.menu_mobile_list_inner .parent').find('.menu_mobile_list_submenu').hide();
*/
	// Accordion
	
	
	
	
	
/*** iDevice touch sortby ***/
		$(document).bind( "mouseup touchend", function(e){
 var menu_mobile = $('.filter-type, .filter-vendor');
 if (!menu_mobile.is(e.target) // if the target of the click isn't the container...
  && menu_mobile.has(e.target).length === 0) // ... nor a descendant of the container
 {
	 $('.collection-filter-panel .drop-sortby').css('display','none');
 }

});
	



	$('.menu_mobile_list_inner li .fa-icon-action').on('click', function(){
		$('.menu_mobile_list_inner li .fa-icon-action.active').removeClass('active');
		$(this).addClass('active');
		removeClass = false;
	});
});

$('.menu_mobile_list_inner li .fa').click(function () {
	$(this).closest('li').find('>ul').slideToggle('fast');
});
$('#menu-mobi').click(function () { 
	$('.menu_mobile_list').slideToggle();
});
$('.field_work_short_action').click(function(){
		$('.field_work_short_content').slideToggle('fast');
	});

// Slide nav field worrk //
(function ($) {

	$.fn.extend({
		slider: function (options) {
			return this.each(function () {

				var sliderContainer = $(this);
				var slider = $('ul', sliderContainer);
				var sliderElements = $('li', slider);
				var slideCount = sliderElements.length;
				var slideAnimating = false;
				var slideIndex = 0;

				options = $.extend({}, options);

				var backEl = $('#' + options.slideBackId);
				var nextEl = $('#' + options.slideNextId);
				var moveToIndex = options.moveToIndex || 0;
				if (moveToIndex < 0) moveToIndex = 0;
				if (moveToIndex > slideCount - 1) moveToIndex = slideCount - 1;

				backEl.click(function () {
					slideBack();
				});

				nextEl.click(function () {
					slideNext();
				});

				if (slideIndex < moveToIndex) {
					moveTo(moveToIndex);
				}

				function moveTo(index) {
					if (slideIndex >= index) return;

					var sliderLeft = parseInt(slider.css("left"));
					var containerWidth = sliderContainer.width();

					var lastEl = sliderElements.last();
					var lastPos = lastEl.position();
					var lastWidth = getElementWidth(lastEl);

					for (var i = 0; i < index; i++) {
						var el = sliderElements.eq(i);
						var width = getElementWidth(el);

						sliderLeft -= width;

						if (sliderLeft + lastPos.left + lastWidth <= containerWidth) {

							slideIndex = i;

							sliderLeft = (containerWidth - (lastPos.l + lastWidth));

							break;
						}
					}

					if (slideIndex > 0) {
						slider.css("left", sliderLeft + "px");
					}
				}

				function slideBack() {
					if (slideIndex < 0 || slideAnimating) return;
					slideAnimating = true;

					var sliderLeft = parseInt(slider.css("left"));

					var el = sliderElements.eq(slideIndex);
					//var width = getElementWidth(el);
					var width = 550;

					if (sliderLeft + width >= 0) {
						width = -sliderLeft;
					}

					if (width <= 0) {
						slideAnimating = false;
						return;
					}

					slider.animate({ left: '+=' + width }, 350, function () {
						slideIndex--;
						slideAnimating = false;
					});
				}

				function getElementWidth(el) {
					var width = el.outerWidth() + parseInt(el.css("marginLeft")) + parseInt(el.css("marginRight"));
					return width;
				}

				function getTotalChildWidth(children) {
					var width = 0;
					children.each(function () {
						width += getElementWidth($(this));
					});

					return width;
				}

				function slideNext() {
					if (slideIndex >= slideCount || slideAnimating) return;
					slideAnimating = true;

					var sliderLeft = parseInt(slider.css("left"));
					var containerWidth = sliderContainer.width();

					var lastEl = sliderElements.last();
					var lastPos = lastEl.position();
					var lastWidth = getElementWidth(lastEl);

					var el = sliderElements.eq(slideIndex);
					var width = 550;

					if (sliderLeft + lastPos.left + lastWidth - width <= containerWidth) {
						width = (sliderLeft + lastPos.left + lastWidth - containerWidth);
					}

					if (width <= 0) {
						slideAnimating = false;
						return;
					}

					slider.animate({ left: '-=' + width }, 350, function () {
						slideIndex++;
						slideAnimating = false;
					});
				}

			});
		}
	});
})(jQuery);