<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <?php
    $parentIds = getCategory($catid,'parentid');
    $seetings1 = getCategory($catid,'setting');
    //print_r($seetings1);
    if(!empty($parentIds) and $parentIds!=1 and $id=='' and $seetings1['meta_title']==''){
        $parentId=$parentIds;
    }elseif($id=='' and $seetings1['meta_title']!=''){
        $parentId=$catid;
    }else{
        $parentId=$parentIds;
    }
    $seetings = getCategory($parentId,'setting');
    ?>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><if condition="$seetings['meta_title'] neq '' and $id eq ''">{$seetings['meta_title']} | {$Config.sitename} <elseif condition="$title neq ''" />{$title} | {$Config.sitename}<else />{$Config.sitename}</if></title>
    <meta name="Keywords" <if condition="$seetings['meta_keywords'] neq '' and $id eq ''"> content="{$seetings['meta_keywords']}" <elseif condition="$keywords neq '' " /> content="{$keywords[0]}" <else /> content="{$Config.sitekeywords}"</if>>
    <meta name="Description" <if condition="$seetings['meta_description'] neq '' and $id eq ''"> content="{$seetings['meta_description']}" <elseif condition="$description neq '' " /> content="{$description}" <else /> content="{$Config.siteinfo}"</if>>
    <script type="text/javascript" src="/statics/default/js/public.js"></script>
    <link type="text/css" rel="stylesheet" href="/statics/default/css/base.css" />
    <link type="text/css" rel="stylesheet" href="/statics/default/css/index.css" />
    <link type="text/css" rel="stylesheet" href="/statics/default/css/index-sp.css" />
    <link type="text/css" rel="stylesheet" href="/statics/default/css/swiper.min.css" />
    <link type="text/css" rel="stylesheet" href="/statics/default/css/animate.min.css" />

</head>
<body style="background:#fff;">

<!--header开始-->
<template file="Content/header.php"/>
<!--header结束-->
<div class="w1380 information">
    <ul>
        <li>
            <div class="Headline-data">
                <div class="caption">BTC</div>
                <div class="range minus">-0.17%</div>
            </div>
            <div class="price"><em>￥</em><p class="timer" id="count-number" data-to="51429.70" data-speed="1500"></p></div>
        </li>
        <li>
            <div class="Headline-data">
                <div class="caption">USDT</div>
                <div class="range minus">-1.12%</div>
            </div>
            <div class="price"><em>￥</em><p class="timer" id="count-number" data-to="1041.99" data-speed="1500"></p></div>
        </li>
        <li>
            <div class="Headline-data">
                <div class="caption">BBR</div>
                <div class="range">+1.96%</div>
            </div>
            <div class="price"><em>￥</em><p class="timer" id="count-number" data-to="0.52" data-speed="1500"></p></div>
        </li>
        <li>
            <div class="Headline-data">
                <div class="caption">ETH</div>
                <div class="range minus">-0.98%</div>
            </div>
            <div class="price"><em>￥</em><p class="timer" id="count-number" data-to="1469.04" data-speed="1500"></p></div>
        </li>
        <li>
            <div class="Headline-data">
                <div class="caption">EOS</div>
                <div class="range minus">-1.09%</div>
            </div>
            <div class="price"><em>￥</em><p class="timer" id="count-number" data-to="805.17" data-speed="1500"></p></div>
        </li>
    </ul>
</div>

<div class="carousel swiper-container">
    <ul class="swiper-wrapper">
    <content action="lists" catid="28" order="listorder asc">
        <volist name="data" id="vo">
            <li class="swiper-slide"><img src="{$vo.thumb}" alt=""/></li>
        </volist>
    </content>
    </ul>
    <div class="swiper-pagination icarousel"></div>
</div>

<div class="content">
    <div class="w1380 bbr-sjl">
        <div class="title wow fadeInUp animated" data-wow-delay="0.3s">
            <span class="zuo"></span>
            <h4>{:getCategory(20,'catname')}</h4>
            <span class="you"></span>
        </div>
        <div class="bbr-sjl-matter clearfix">
        <content action="lists" catid="20" order="listorder asc">
                <volist name="data" id="vo">
            <div class="img wow fadeInLeft animated" data-wow-delay="0.3s"><img src="{$vo.thumb}" alt=""/></div> 
            <div class="introduce wow fadeInRight animated" data-wow-delay="0.5s">
                <div class="abstract">
                    {$vo.title}
                </div>
                <div class="peculiarity">
                    {$vo.description}
                </div>
            </div>
                </volist>
            </content>
        </div>
    </div>
    <div class="application-product">
        <div class="w1380">
            <div class="title wow fadeInUp animated" data-wow-delay="0.3s">
                <span class="zuo"></span>
                <h4>{:getCategory(21,'catname')}</h4>
                <span class="you"></span>
            </div>  
            <ul>
            <content action="lists" catid="21" order="listorder asc">
                <volist name="data" id="vo">
                <li class="wow animated flipInY" name="revealOnScroll" data-animation="flipInY" data-wow-delay="0.2s">
                    <div class="initial">
                        <div class="yycp-title">{$vo.title}</div>
                        <img src="{$vo.thumb}" alt=""/>
                    </div>
                    <div class="yycp-introduce">
                        {$vo.description}
                        <a href="{$vo.url}" target="_blank" class="ckgd">查看更多</a>
                    </div>
                </li>
                </volist>
            </content>
            </ul>
        </div>
    </div>
    <div class="technical-advantage">
        <div class="title wow fadeInUp animated" data-wow-delay="0.3s">
            <span class="zuo"></span>
            <h4>{:getCategory(22,'catname')}</h4>
            <span class="you"></span>
        </div>  
        <ul class="w1380 wow fadeInUp animated" data-wow-delay="0.5s">
        <content action="lists" catid="22" order="listorder asc">
            <volist name="data" id="vo">
            <li>
                <img src="{$vo.thumb}" alt=""/>
                <h4>{$vo.title}</h4>
                {$vo.description}
            </li>
            </volist>
        </content>
        </ul>
    </div>
    <div class="news-information">
        <div class="title wow fadeInUp animated" data-wow-delay="0.3s">
            <span class="zuo"></span>
            <h4>{:getCategory(15,'catname')}</h4>
            <span class="you"></span>
        </div>  
        <div class="news-information-nr wow fadeInUp animated" data-wow-delay="0.5s">
            <!-- <div class="swiper-button-prev"></div> -->
            <div class="w1380 message swiper-container">
                <ul class="swiper-wrapper">
                <content action="lists" catid="23" order="updatetime desc" num="1">
                    <volist name="data" id="vo">
                    <li class="swiper-slide">
                        <div class="message-title">{:getCategory(23,'catname')}</div>
                        <a href="{$vo.url}" class="journalism-recommend">
                            <div class="img"><img src="{$vo.thumb}" alt=""/></div>
                            <div class="message-nr">
                                <h5>{$vo.title}</h5>
                                <p>{$vo.description}</p>
                                <div class="time">{$vo.updatetime|date="Y-m-d",###}</div>
                            </div>
                        </a>
                        <a href="{:getCategory(23,'url')}" class="view-more">查看更多</a>
                    </li>
                    </volist>
                </content>
                <content action="lists" catid="24" order="updatetime desc" num="1">
                    <volist name="data" id="vo">
                    <li class="swiper-slide">
                        <div class="message-title">{:getCategory(24,'catname')}</div>
                        <a href="{$vo.url}" class="journalism-recommend">
                            <div class="img"><img src="{$vo.thumb}" alt=""/></div>
                            <div class="message-nr">
                                <h5>{$vo.title}</h5>
                                <p>{$vo.description}</p>
                                <div class="time">{$vo.updatetime|date="Y-m-d",###}</div>
                            </div>
                        </a>
                        <a href="{:getCategory(24,'url')}" class="view-more">查看更多</a>
                    </li>
                    </volist>
                </content>
                <content action="lists" catid="23" order="updatetime desc" num="1">
                    <volist name="data" id="vo">
                    <li class="swiper-slide">
                        <div class="message-title">{:getCategory(23,'catname')}</div>
                        <a href="#" class="journalism-recommend">
                            <div class="img"><img src="{$vo.thumb}" alt=""/></div>
                            <div class="message-nr">
                                <h5>{$vo.title}</h5>
                                <p>{$vo.description}</p>
                                <div class="time">{$vo.updatetime|date="Y-m-d",###}</div>
                            </div>
                        </a>
                        <a href="{:getCategory(23,'url')}" class="view-more">查看更多</a>
                    </li>
                    </volist>
                </content>
                <content action="lists" catid="24" order="updatetime desc" num="1">
                    <volist name="data" id="vo">
                    <li class="swiper-slide">
                        <div class="message-title">{:getCategory(24,'catname')}</div>
                        <a href="#" class="journalism-recommend">
                            <div class="img"><img src="{$vo.thumb}" alt=""/></div>
                            <div class="message-nr">
                                <h5>{$vo.title}</h5>
                                <p>{$vo.description}</p>
                                <div class="time">{$vo.updatetime|date="Y-m-d",###}</div>
                            </div>
                        </a>
                        <a href="{:getCategory(24,'url')}" class="view-more">查看更多</a>
                    </li>
                    </volist>
                </content>
                </ul>
            </div>
            <!-- <div class="swiper-button-next"></div> -->
        </div>
    </div>
</div>

<template file="Content/footer_index.php"/>

<script type="text/javascript" src="/statics/default/js/jquery.js"></script>
<script type="text/javascript" src="/statics/default/js/base.js"></script>
<script type="text/javascript" src="/statics/default/js/jquery.SuperSlide.2.1.2.js"></script>
<script type="text/javascript" src="/statics/default/js/swiper.min.js"></script>
<script type="text/javascript" src="/statics/default/js/language.js"></script>
<script src="/statics/default/js/jquery-1.11.3.js" type="text/javascript" charset="utf-8"></script>
<script src="/statics/default/js/wow.min.js" type="text/javascript" charset="utf-8"></script>
<script src="/statics/default/js/main(1).js" type="text/javascript" charset="utf-8"></script>

<script type="text/javascript">
    var swiper = new Swiper('.carousel', {
      effect : 'fade',
      pagination: {
        el: '.icarousel',
        clickable: true,
      },
      autoplay: {
        delay: 5000,
        stopOnLastSlide: false,
        disableOnInteraction: false,
      },
    });
</script>
<script type="text/javascript">
    //窗口显示才加载
    $('body').on("each",
    function() {
        var s = $(window).scrollTop();
        $(".timer").each(count);
        function count(a) {
            var b = $(this);
            a = $.extend({},
            a || {},
            b.data("countToOptions") || {});
            b.countTo(a)
        };
        istrue = false;
    })
    //设置计数
    $.fn.countTo = function (options) {
			options = options || {};
			return $(this).each(function () {
				//当前元素的选项
				var settings = $.extend({}, $.fn.countTo.defaults, {
					from:            $(this).data('from'),
					to:              $(this).data('to'),
					speed:           $(this).data('speed'),
					refreshInterval: $(this).data('refresh-interval'),
					decimals:        $(this).data('decimals')
				}, options);
				//更新值
				var loops = Math.ceil(settings.speed / settings.refreshInterval),
					increment = (settings.to - settings.from) / loops;
				//更改应用和变量
				var self = this,
				$self = $(this),
				loopCount = 0,
				value = settings.from,
				data = $self.data('countTo') || {};
				$self.data('countTo', data);
				//如果有间断，找到并清除
				if (data.interval) {
					clearInterval(data.interval);
				};
				data.interval = setInterval(updateTimer, settings.refreshInterval);
				//初始化起始值
				render(value);
				function updateTimer() {
					value += increment;
					loopCount++;
					render(value);
					if (typeof(settings.onUpdate) == 'function') {
					settings.onUpdate.call(self, value);
					}
					if (loopCount >= loops) {
					//移出间隔
					$self.removeData('countTo');
					clearInterval(data.interval);
					value = settings.to;
					if (typeof(settings.onComplete) == 'function') {
						settings.onComplete.call(self, value);
					}
					}
				}
				Number.toLocaleString('en-US');
					function render(value) {
						var formattedValue = settings.formatter.call(self, value, settings);
						$self.html(formattedValue);
					}
			});
        };
        $.fn.countTo.defaults={
			from:0,               //数字开始的值
			to:0,                 //数字结束的值
			speed:1000,           //设置步长的时间
			refreshInterval:100,  //隔间值
			decimals:0,           //显示小位数
			formatter: formatter, //渲染之前格式化
			onUpdate:null,        //每次更新前的回调方法
			onComplete:null       //完成更新的回调方法
        };
        function formatter(value, settings){
			return value.toFixed(2);
        }
        //自定义格式
        $('#count-number').data('countToOptions',{
			formmatter:function(value, options){
				return value.toFixed(options.decimals).replace(/\B(?=(?:\d{3})+(?!\d))/g, ',');
			}
        });
        //定时器
        $('.timer').each(count);
        function count(options){
        var $this=$(this);
        options=$.extend({}, options||{}, $this.data('countToOptions')||{});
        $this.countTo(options);
        }
</script>
<script>
    var swiper = new Swiper('.message', {
      slidesPerView: 'auto',
      loop : true,
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
    });
</script>
<!--[if IE 6]>
<script type="text/javascript" src="/statics/default/js/DD_belatedPNG.js"></script>
<script type="text/javascript">
    DD_belatedPNG.fix(".");
</script>
<![Endif]-->
</body>
</html>
