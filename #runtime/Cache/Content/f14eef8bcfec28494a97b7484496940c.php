<?php if (!defined('THINK_PATH')) exit();?>﻿<!DOCTYPE html>
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
<div class="header">
    <div class="w1380 iheader">
        <a href="#" class="logo"><img src="/statics/default/images/logo.png" alt=""/></a>
        <div class="header-right">
            <div class="nav-box">
                <ul class="nav-ul clearfix">
                    <li class="nav-list">
                        <h3><a href="/">首页</a></h3>
                    </li>
                    <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "category")){ $data = $content_tag->category(array('action'=>'category','catid'=>'0','order'=>'listorder asc','num'=>'0','page'=>'0','pagefun'=>'page','return'=>'data',)); } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li class="nav-list">
                        <h3><a href="<?php echo ($vo["url"]); ?>" <?php if($vo['catid'] == 10): ?>target="_blank"<?php else: endif; ?>><?php echo ($vo["catname"]); ?></a></h3>
                        <ul>
                        <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "category")){ $data1 = $content_tag->category(array('action'=>'category','catid'=>$vo['catid'],'order'=>'listorder asc','return'=>'data1','num'=>'0','page'=>'0','pagefun'=>'page',)); } if(is_array($data1)): $i = 0; $__LIST__ = $data1;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$va): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($va["url"]); ?>"><?php echo ($va["catname"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                        </ul>
                    </li><?php endforeach; endif; else: echo "" ;endif; ?>
                </ul>
            </div>
            <div class="font-select">
                <span>简体中文</span>
                <ul>
                    <li class="on"><a href="#">简体中文</a></li>
                    <li><a href="#">繁体中文</a></li>
                    <li><a href="#">英文</a></li>
                    <li><a href="#">日文</a></li>
                </ul>
            </div>
        </div>
        <div class="mobile-terminal">
            <div class="typeface">
                <a href="#">繁</a><em>/</em><a href="#">简</a><em>/</em><a href="#">英</a><em>/</em><a href="#">日</a>
            </div>
            <div class="menu">
                <span class="menu1 trans"></span>
                <span class="menu2 trans-fast"></span>
                <span class="menu3 trans"></span>
            </div>   
        </div>      
    </div>
    <div class="ydd-nav-box">
        <ul class="ydd-nav-ul">
            <li class="ydd-nav-li on">
                <h5><a href="/">首页</a></h5>
            </li>
            <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "category")){ $data = $content_tag->category(array('action'=>'category','catid'=>'0','order'=>'listorder asc','num'=>'0','page'=>'0','pagefun'=>'page','return'=>'data',)); } $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "category")){ $data1 = $content_tag->category(array('action'=>'category','catid'=>$vo['catid'],'order'=>'listorder asc','return'=>'data1','num'=>'0','page'=>'0','pagefun'=>'page',)); } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li class="ydd-nav-li">
                <h5><a <?php if($data1 == null): ?>href="<?php echo ($vo["url"]); ?>"<?php else: endif; ?>><?php echo ($vo["catname"]); ?></a></h5>
                <ul class="clearfix">
                <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "category")){ $data1 = $content_tag->category(array('action'=>'category','catid'=>$vo['catid'],'order'=>'listorder asc','return'=>'data1','num'=>'0','page'=>'0','pagefun'=>'page',)); } if(is_array($data1)): $i = 0; $__LIST__ = $data1;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$va): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($va["url"]); ?>"><?php echo ($va["catname"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                </ul>
            </li><?php endforeach; endif; else: echo "" ;endif; ?>
        </ul>
    </div>
</div>
<!--header结束-->
<div class="content-ny">
    <div class="banner-ny">
        <img src="/statics/default/images/banner5.jpg" alt=""/>
        <p><?php echo getCategory(15,'catname');?><i>·</i><em><?php echo getCategory(15,'catdir');?></em></p>
    </div>
    <div class="w1380 news clearfix">
        <div class="new-left wow fadeInLeft animated" data-wow-delay="0.3s">
            <div class="Hot-labels">
                <h6><?php echo getCategory(30,'catname');?></h6>
                <ul class="clearfix">
                    <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "category")){ $data = $content_tag->category(array('action'=>'category','catid'=>'30','order'=>'listorder asc','num'=>'0','page'=>'0','pagefun'=>'page','return'=>'data',)); } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["url"]); ?>"><?php echo ($vo["catname"]); ?>|</a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                </ul>
            </div>
            <div class="latest-news">
                <h6>最新资讯</h6>
                <ul class="clearfix">
                    <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "lists")){ $data = $content_tag->lists(array('action'=>'lists','catid'=>'15','order'=>'updatetime desc','num'=>'0','page'=>'0','pagefun'=>'page','return'=>'data',)); } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li> 
                        <a href="<?php echo ($vo["url"]); ?>"><?php echo ($vo["title"]); ?></a>
                        <div class="fbsj"><span>发布时间：</span><?php echo (date("Y-m-d",$vo["updatetime"])); ?></div>
                    </li><?php endforeach; endif; else: echo "" ;endif; ?>
                </ul>
                </ul>
            </div>
            <div class="Popular-articles">
                <h6>热门文章</h6>
                <ul>
                    <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "lists")){ $data = $content_tag->lists(array('action'=>'lists','catid'=>'15','order'=>'updatetime desc','num'=>'0','page'=>'0','pagefun'=>'page','return'=>'data',)); } if(is_array($data)): $k = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?><li>
                        <a href="<?php echo ($vo["url"]); ?>">
                            <em><?php echo ($k); ?></em><p><?php echo ($vo["title"]); ?></p>
                        </a>
                    </li><?php endforeach; endif; else: echo "" ;endif; ?>
                </ul>
            </div>
        </div>
        <div class="new-right xwxq wow fadeInRight animated" data-wow-delay="0.6s">
            <div class="new-details">
                <div class="new-details-title">
                    <h4><?php echo ($title); ?></h4>
                    <div class="source">
                        <div class="pertain-column"><?php echo getCategory($catid,'catname');?></div>
                        <div class="time"><?php echo (str_cut($updatetime,5,'')); ?></div>
                    </div>
                </div>
                <div class="new-details-nr">
                    <?php echo ($content); ?>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="footer footer-ny">
    <div class="w1380 footer-matter">
        <div class="footer-matter-top clearfix">
            <div class="qr-code clearfix">
            <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "lists")){ $data = $content_tag->lists(array('action'=>'lists','catid'=>'25','order'=>'listorder asc','num'=>'0','page'=>'0','pagefun'=>'page','return'=>'data',)); } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="Platform-code">
                    <p><?php echo ($vo["title"]); ?></p>
                    <img src="<?php echo ($vo["thumb"]); ?>" alt=""/>
                </div><?php endforeach; endif; else: echo "" ;endif; ?>
            </div>
            <div class="footer-contact-us">
                <h5>联系我们</h5>
                <div class="footer-lxwm">
                    <div class="spfk"><span>产品反馈：</span>dingyan@handers.net</div>
                    <div class="swhz"><span>商务合作：</span>yujiahui@handers.net</div>
                    <div class="lxkf"><span>联系客服：</span>BBR@handers.net</div>
                    <div class="cygfsq"><span>币用官方社群：</span>0.plus/BBR_cn</div>
                </div>
            </div>
        </div>
        <div class="footer-matter-bottom clearfix">
            <div class="reference">Copyright©2018-2019 -SHOWBANK SCIENCE ALL Rights Reserved.</div>
            <div class="hint">请谨防虚假帐户。想要获取更多信息，请关注BBR官方媒体平台</div>
        </div>
    </div>
</div>

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