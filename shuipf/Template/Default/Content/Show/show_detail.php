<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>新闻资讯-详情</title>
    <meta name="keywords" content="关键词" />
    <meta name="description" content="描述" />
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
<div class="content-ny">
    <div class="banner-ny">
        <img src="/statics/default/images/banner5.jpg" alt=""/>
        <p>{:getCategory(15,'catname')}<i>·</i><em>{:getCategory(15,'catdir')}</em></p>
    </div>
    <div class="w1380 news clearfix">
        <div class="new-left wow fadeInLeft animated" data-wow-delay="0.3s">
            <div class="Hot-labels">
                <h6>{:getCategory(30,'catname')}</h6>
                <ul class="clearfix">
                    <content action="category" catid="30" order="listorder asc">
                    <volist name="data" id="vo">
                    <li><a href="{$vo.url}">{$vo.catname}|</a></li>
                    </volist>
                </content>
                </ul>
            </div>
            <div class="latest-news">
                <h6>最新资讯</h6>
                <ul class="clearfix">
                    <content action="lists" catid="15" order="updatetime desc">
                        <volist name="data" id="vo">
                    <li> 
                        <a href="{$vo.url}">{$vo.title}</a>
                        <div class="fbsj"><span>发布时间：</span>{$vo.updatetime|date="Y-m-d",###}</div>
                    </li>
                        </volist>
                    </content>
                </ul>
                </ul>
            </div>
            <div class="Popular-articles">
                <h6>热门文章</h6>
                <ul>
                    <content action="lists" catid="15" order="updatetime desc">
                        <volist name="data" id="vo" key="k">
                    <li>
                        <a href="{$vo.url}">
                            <em>{$k}</em><p>{$vo.title}</p>
                        </a>
                    </li>
                        </volist>
                    </content>
                </ul>
            </div>
        </div>
        <div class="new-right xwxq wow fadeInRight animated" data-wow-delay="0.6s">
            <div class="new-details">
                <div class="new-details-title">
                    <h4>{$title}</h4>
                    <div class="source">
                        <div class="pertain-column">{:getCategory($catid,'catname')}</div>
                        <div class="time">{$updatetime|str_cut=###,5,''}</div>
                    </div>
                </div>
                <div class="new-details-nr">
                    {$content}
                </div>
            </div>
        </div>
    </div>
</div>
<template file="Content/footer.php"/>

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
        el: '.swiper-pagination',
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
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },
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
