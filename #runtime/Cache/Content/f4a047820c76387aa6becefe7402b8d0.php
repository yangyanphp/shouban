<?php if (!defined('THINK_PATH')) exit();?>﻿<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <?php
 $parentIds = getCategory($catid,'parentid'); $seetings1 = getCategory($catid,'setting'); if(!empty($parentIds) and $parentIds!=1 and $id=='' and $seetings1['meta_title']==''){ $parentId=$parentIds; }elseif($id=='' and $seetings1['meta_title']!=''){ $parentId=$catid; }else{ $parentId=$parentIds; } $seetings = getCategory($parentId,'setting'); ?>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><?php if($seetings['meta_title'] != '' and $id == ''): echo ($seetings['meta_title']); ?> | <?php echo ($Config["sitename"]); ?> <?php elseif($title != ''): echo ($title); ?> | <?php echo ($Config["sitename"]); else: echo ($Config["sitename"]); endif; ?></title>
    <meta name="Keywords" <?php if($seetings['meta_keywords'] != '' and $id == ''): ?>content="<?php echo ($seetings['meta_keywords']); ?>" <?php elseif($keywords != '' ): ?> content="<?php echo ($keywords[0]); ?>" <?php else: ?> content="<?php echo ($Config["sitekeywords"]); ?>"<?php endif; ?>>
    <meta name="Description" <?php if($seetings['meta_description'] != '' and $id == ''): ?>content="<?php echo ($seetings['meta_description']); ?>" <?php elseif($description != '' ): ?> content="<?php echo ($description); ?>" <?php else: ?> content="<?php echo ($Config["siteinfo"]); ?>"<?php endif; ?>>
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
            <div class="price"><em>￥</em><p class="timer" id="count-number" data-to="51.32" data-speed="1500"></p></div>
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
    <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "lists")){ $data = $content_tag->lists(array('action'=>'lists','catid'=>'28','order'=>'listorder asc','num'=>'0','page'=>'0','pagefun'=>'page','return'=>'data',)); } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li class="swiper-slide"><img src="<?php echo ($vo["thumb"]); ?>" alt=""/></li><?php endforeach; endif; else: echo "" ;endif; ?>
    </ul>
    <div class="swiper-pagination icarousel"></div>
</div>

<div class="content">
    <div class="w1380 bbr-sjl">
        <div class="title wow fadeInUp animated" data-wow-delay="0.3s">
            <span class="zuo"></span>
            <h4><?php echo getCategory(20,'catname');?></h4>
            <span class="you"></span>
        </div>
        <div class="bbr-sjl-matter clearfix">
        <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "lists")){ $data = $content_tag->lists(array('action'=>'lists','catid'=>'20','order'=>'listorder asc','num'=>'0','page'=>'0','pagefun'=>'page','return'=>'data',)); } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="img wow fadeInLeft animated" data-wow-delay="0.3s"><img src="<?php echo ($vo["thumb"]); ?>" alt=""/></div> 
            <div class="introduce wow fadeInRight animated" data-wow-delay="0.5s">
                <div class="abstract">
                    <?php echo ($vo["title"]); ?>
                </div>
                <div class="peculiarity">
                    <?php echo ($vo["description"]); ?>
                </div>
            </div><?php endforeach; endif; else: echo "" ;endif; ?>
        </div>
    </div>
    <div class="application-product">
        <div class="w1380">
            <div class="title wow fadeInUp animated" data-wow-delay="0.3s">
                <span class="zuo"></span>
                <h4><?php echo getCategory(21,'catname');?></h4>
                <span class="you"></span>
            </div>  
            <ul>
            <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "lists")){ $data = $content_tag->lists(array('action'=>'lists','catid'=>'21','order'=>'listorder asc','num'=>'0','page'=>'0','pagefun'=>'page','return'=>'data',)); } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li class="wow animated flipInY" name="revealOnScroll" data-animation="flipInY" data-wow-delay="0.2s">
                    <div class="initial">
                        <div class="yycp-title"><?php echo ($vo["title"]); ?></div>
                        <img src="<?php echo ($vo["thumb"]); ?>" alt=""/>
                    </div>
                    <div class="yycp-introduce">
                        <?php echo ($vo["description"]); ?>
                        <a href="<?php echo ($vo["url"]); ?>" target="_blank" class="ckgd">查看更多</a>
                    </div>
                </li><?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>
        </div>
    </div>
    <div class="technical-advantage">
        <div class="title wow fadeInUp animated" data-wow-delay="0.3s">
            <span class="zuo"></span>
            <h4><?php echo getCategory(22,'catname');?></h4>
            <span class="you"></span>
        </div>  
        <ul class="w1380 wow fadeInUp animated" data-wow-delay="0.5s">
        <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "lists")){ $data = $content_tag->lists(array('action'=>'lists','catid'=>'22','order'=>'listorder asc','num'=>'0','page'=>'0','pagefun'=>'page','return'=>'data',)); } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li>
                <img src="<?php echo ($vo["thumb"]); ?>" alt=""/>
                <h4><?php echo ($vo["title"]); ?></h4>
                <?php echo ($vo["description"]); ?>
            </li><?php endforeach; endif; else: echo "" ;endif; ?>
        </ul>
    </div>
    <div class="news-information">
        <div class="title wow fadeInUp animated" data-wow-delay="0.3s">
            <span class="zuo"></span>
            <h4><?php echo getCategory(15,'catname');?></h4>
            <span class="you"></span>
        </div>  
        <div class="news-information-nr wow fadeInUp animated" data-wow-delay="0.5s">
            <!-- <div class="swiper-button-prev"></div> -->
            <div class="w1380 message swiper-container">
                <ul class="swiper-wrapper">
                <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "lists")){ $data = $content_tag->lists(array('action'=>'lists','catid'=>'23','order'=>'updatetime desc','num'=>'1','page'=>'0','pagefun'=>'page','return'=>'data',)); } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li class="swiper-slide">
                        <div class="message-title"><?php echo getCategory(23,'catname');?></div>
                        <a href="<?php echo ($vo["url"]); ?>" class="journalism-recommend">
                            <div class="img"><img src="<?php echo ($vo["thumb"]); ?>" alt=""/></div>
                            <div class="message-nr">
                                <h5><?php echo ($vo["title"]); ?></h5>
                                <p><?php echo ($vo["description"]); ?></p>
                                <div class="time"><?php echo (date("Y-m-d",$vo["updatetime"])); ?></div>
                            </div>
                        </a>
                        <a href="<?php echo getCategory(23,'url');?>" class="view-more">查看更多</a>
                    </li><?php endforeach; endif; else: echo "" ;endif; ?>
                <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "lists")){ $data = $content_tag->lists(array('action'=>'lists','catid'=>'24','order'=>'updatetime desc','num'=>'1','page'=>'0','pagefun'=>'page','return'=>'data',)); } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li class="swiper-slide">
                        <div class="message-title"><?php echo getCategory(24,'catname');?></div>
                        <a href="<?php echo ($vo["url"]); ?>" class="journalism-recommend">
                            <div class="img"><img src="<?php echo ($vo["thumb"]); ?>" alt=""/></div>
                            <div class="message-nr">
                                <h5><?php echo ($vo["title"]); ?></h5>
                                <p><?php echo ($vo["description"]); ?></p>
                                <div class="time"><?php echo (date("Y-m-d",$vo["updatetime"])); ?></div>
                            </div>
                        </a>
                        <a href="<?php echo getCategory(24,'url');?>" class="view-more">查看更多</a>
                    </li><?php endforeach; endif; else: echo "" ;endif; ?>
                <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "lists")){ $data = $content_tag->lists(array('action'=>'lists','catid'=>'23','order'=>'updatetime desc','num'=>'1','page'=>'0','pagefun'=>'page','return'=>'data',)); } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li class="swiper-slide">
                        <div class="message-title"><?php echo getCategory(23,'catname');?></div>
                        <a href="#" class="journalism-recommend">
                            <div class="img"><img src="<?php echo ($vo["thumb"]); ?>" alt=""/></div>
                            <div class="message-nr">
                                <h5><?php echo ($vo["title"]); ?></h5>
                                <p><?php echo ($vo["description"]); ?></p>
                                <div class="time"><?php echo (date("Y-m-d",$vo["updatetime"])); ?></div>
                            </div>
                        </a>
                        <a href="<?php echo getCategory(23,'url');?>" class="view-more">查看更多</a>
                    </li><?php endforeach; endif; else: echo "" ;endif; ?>
                <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "lists")){ $data = $content_tag->lists(array('action'=>'lists','catid'=>'24','order'=>'updatetime desc','num'=>'1','page'=>'0','pagefun'=>'page','return'=>'data',)); } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li class="swiper-slide">
                        <div class="message-title"><?php echo getCategory(24,'catname');?></div>
                        <a href="#" class="journalism-recommend">
                            <div class="img"><img src="<?php echo ($vo["thumb"]); ?>" alt=""/></div>
                            <div class="message-nr">
                                <h5><?php echo ($vo["title"]); ?></h5>
                                <p><?php echo ($vo["description"]); ?></p>
                                <div class="time"><?php echo (date("Y-m-d",$vo["updatetime"])); ?></div>
                            </div>
                        </a>
                        <a href="<?php echo getCategory(24,'url');?>" class="view-more">查看更多</a>
                    </li><?php endforeach; endif; else: echo "" ;endif; ?>
                </ul>
            </div>
            <!-- <div class="swiper-button-next"></div> -->
        </div>
    </div>
</div>

<div class="footer footer-ny">
    <div class="w1380 partner">
        <div class="title">
            <span class="zuo"></span>
            <h4><?php echo getCategory(29,'catname');?></h4>
            <span class="you"></span>
        </div>
        <ul class="clearfix">
        <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "lists")){ $data = $content_tag->lists(array('action'=>'lists','catid'=>'29','order'=>'listorder asc','num'=>'0','page'=>'0','pagefun'=>'page','return'=>'data',)); } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["url"]); ?>" target="_blank"><img src="<?php echo ($vo["thumb"]); ?>" alt=""/></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
        </ul>
    </div>
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