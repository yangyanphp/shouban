/*滚动动画*/
function scrollAni(ele,_distance) {
	ele.each(function() {
	    var _this = $(this);
	    if (_this.offset().top > $(window).scrollTop() + $(window).height() || _this.offset().top < $(window).scrollTop() - _this.outerHeight()) {
	      // _this.removeClass('animate');
	    } else if ($(window).scrollTop() > _this.offset().top - $(window).height() * _distance) {
	      _this.addClass('animate');
	    }
	});
	$(window).scroll(function() {
	  	ele.each(function() {
		    var _this = $(this);
		    if (_this.offset().top > $(window).scrollTop() + $(window).height() || _this.offset().top < $(window).scrollTop() - _this.outerHeight()) {
		      // _this.removeClass('animate');
		    } else if ($(window).scrollTop() > _this.offset().top - $(window).height() * _distance) {
		      _this.addClass('animate');
		    }
		});
	});
}

function _showToTop() {
	var h = $(window).height();
	if($(window).scrollTop()>h/3) {
		$('.side-always').stop().fadeIn();
	}else {
		$('.side-always').stop().fadeOut();
	}
}

// 纵向滚动条
function scrolly(ele) {
    ele.mCustomScrollbar({
        axis:'y', // horizontal scrollba
        autoHideScrollbar: true,
        mouseWheel:{ preventDefault:false }
    });
}
function scrolly2(ele) {
    ele.mCustomScrollbar({
        axis:'y', // horizontal scrollba
        autoHideScrollbar: false,
        mouseWheel:{ preventDefault:false }
    });
}
// 纵向滚动条
function scrollX(ele) {
    ele.mCustomScrollbar({
        axis:'x', // horizontal scrollba
        autoHideScrollbar: false,
        mouseWheel:{ preventDefault:false }
    });
}

// 表单下拉
function showOptions(ele) {
    var topEle = ele.find('.section-top');
    var optionsWrap = ele.find('.options-wrap');
    topEle.on('click',function(){
        if(ele.hasClass('cur')) {
            ele.removeClass('cur');
            optionsWrap.stop().slideUp();
        }else {
            ele.addClass('cur');
            optionsWrap.stop().slideDown();
        }
    })
}
function hideOptions(ele) {
    var topEle = ele.find('.section-top');
    var optionsWrap = ele.find('.options-wrap');
    var optionItem = ele.find('.options-item');
    optionItem.on('click',function(){
        var _txt = $(this).html();
        ele.removeClass('cur');
        topEle.html(_txt);
        optionsWrap.stop().slideUp();
        var _dataid = $(this).attr('data-id');
        topEle.attr('data-id',_dataid);
    })
}
// 表单下拉end

//少于指定轮播个数，隐藏点点点
function hide_Swiper_Hd(el1,el2,width,size) {
	var _s = el1.size();
	var _w = $(window).width();
	  if(_w > width && _s < size) {
	  el2.css('display','none');
	}
}

// 加载banner图片
    function innerBannerBg() {
        if($('.inner-banner').length>0) {
            var innerBannerimgs = [];
            var _innerPcImg1 = $('.inner-banner .pc-img').data('src')
            innerBannerimgs.push(_innerPcImg1);
            _PreLoadImg(innerBannerimgs,function(){
                $('.inner-banner').find('.loaddings').fadeOut(50);
                $('.inner-banner .js-m2').addClass('animate');
                $('.inner-banner .pc-img').attr("style","background-image:url("+_innerPcImg1+")");
            });
        }
    }
    // 加载banner图片end
_headerBg();
function _headerBg() {
	var _welcome = $('.welcome').size();
	if(_welcome<1) {
		$('.header').addClass('bgf');
	}
}
innerBannerBg();
// 头底及公共函数
$(function(){
	wow = new WOW(
      {
      boxClass:     'wow',      // default
      animateClass: 'animated', // default
      offset:       100,          // default 0
      mobile:       true,       // default
      live:         true        // default
    });

	wow.init();
	// innerBanner();
	scrollAni($('.js-m'),.88);
	scrollAni($('.js-opacity'),.88);
	
	$('.header').addClass('animate');

	_showToTop();
	$(window).scroll(function(){
		_showToTop();
	});
	$('.toTop-item').click(function(){
		$("html,body").animate({"scrollTop": "0px"}, "slow");
	});
    $('.submit-input').click(function(event) {
        var _this = $(this);
        setTimeout(function(){
            if(_this.hasClass('disable')) {
                _this.val('提交中');
            }
        }, 100);
    });
    $('.submit-inputs').click(function(event) {
        var _this = $(this);
        setTimeout(function(){
            if(_this.hasClass('disable')) {
                _this.val('提交中');
            }
        }, 100);
    });
    window.setInterval("submitFun()",500);
});
function submitFun() {
    if($('.submit-input').hasClass('disable')) {
        $('.submit-input').val('提交中');
    }else {
        if($('.submit-input').hasClass('list5-submit') || $('.submit-input').hasClass('list4-submit')) {
            $('.submit-input').val('和我们一起出发');
        }else if($('.submit-input').hasClass('experience-submit')) {
            $('.submit-input').val('我要预约参观');
        }else if($('.submit-input').hasClass('signUp-submit')) {
            $('.submit-input').val('注册');
        }else {
            $('.submit-input').val('提交');
        }
    }
    if($('.submit-inputs').hasClass('disable')) {
        $('.submit-inputs').val('提交中');
    }else {
        $('.submit-inputs').val('提交');
    }
}
