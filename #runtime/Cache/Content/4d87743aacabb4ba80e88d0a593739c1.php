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
<div class="content-ny">
    <div class="transaction-matter">
        <div class="w1380 transaction-matter-nr">
            <div class="img wow fadeInLeft animated" data-wow-delay="0.3s"><img src="/statics/default/images/jys-bg.png" alt=""/></div>
            <div class="transaction-information wow fadeInRight animated" data-wow-delay="0.6s">
                <div class="jys-nr">
                    <h4>高性能撮合引擎</h4>
                    <p>自主研发的撮合交易引擎，采用先进的分布式集群架构及微服务开发方式。支持超过300万/秒交易并发</p>
                </div>
                <div class="jys-nr">
                    <h4>金融级安全防护</h4>
                    <p>无偏性零知识证明隐私保密技术保护用户隐私，采用基于多种签名、离线签名、分层架构等安全设计，采用冷热钱包分离技术。</p>
                </div>
                <div class="jys-nr">
                    <h4>OTC场外交易</h4>
                    <p>支持多种法币交易 平台担保、快速安全</p>
                </div>
            </div>
        </div>
    </div>
    <div class="w1380 Install-the-tutorial">
        <div class="title wow fadeInUp animated" data-wow-delay="0.3s">
            <span class="zuo"></span>
            <h4>安装教程</h4>
            <span class="you"></span>
        </div>
        <div class="course clearfix">
            <div class="ios-course wow fadeInLeft animated" data-wow-delay="0.3s">
                <div class="course-title">
                    <h5>iOS</h5>
                    <span>（通过TestFlight下载XT App稳定版）</span>
                </div>
                <div class="img-course"><img src="/statics/default/images/ios.png" alt=""/></div>
                <div class="procedure">
                    <div class="step">
                        <div class="step-title">Step<em>01</em></div>
                        <p>扫码后，点击“在App Store中查看“按钮下载安装TestFlight,并接受用户协议。</p>
                    </div>
                    <div class="step">
                        <div class="step-title">Step<em>02</em></div>
                        <p>安装后返回引导页，点击“开始测试”按钮 进入安装XT App。</p>
                    </div>
                    <div class="step">
                        <div class="step-title">Step<em>03</em></div>
                        <p>点击“接受”，即可安装XT到桌面。</p>
                    </div>
                </div>
                <a href="https://testflight.apple.com/join/YyHPG2ka" class="download"><em>iOS</em> 下载</a>
            </div>
            <div class="android-course wow fadeInRight animated" data-wow-delay="0.6s">
                <div class="course-title">
                    <h5>Android</h5>
                    <span></span>
                </div>
                <div class="img-course"><img src="/statics/default/images/android.png" alt=""/></div>
                <div class="procedure">
                    <div class="step">
                        <div class="step-title">Step<em>01</em></div>
                        <p>扫码或者复制“https://www.xt.com/appstore”链接，点击“下载”按钮。</p>
                    </div>
                    <div class="step">
                        <div class="step-title">Step<em>02</em></div>
                        <p>点击“安装”，即可安装XT到桌面。</p>
                    </div>
                </div>
                <a href="https://www.xt.com/androidDownload" class="download"><em>Android</em> 下载</a>
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

<!--[if IE 6]>
<script type="text/javascript" src="/statics/default/js/DD_belatedPNG.js"></script>
<script type="text/javascript">
    DD_belatedPNG.fix(".");
</script>
<![Endif]-->
</body>
</html>