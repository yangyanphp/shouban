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
<div class="banner">
    <img src="/statics/default/images/banner1.jpg" alt=""/>
    <div class="banner-img">
        <div class="bbrt-details">
            <div class="bbrt-answers">
                <div class="issue">什么是BBR？</div>
                <div class="answer">BBR是由BBR商基链发行的基于BBR的商业代币，简称BBR。</div>
            </div>
            <div class="bbrt-synopsis">
                BBR建立经济领域里去中心化的自治管理和发展组织结构。在充分利用区块链技术的去中心化、不可篡改及公平公正，以重塑以往应用体系中构建用户价值系统，再造领域的新业态价值。
            </div>
        </div>
    </div>
</div>

<div class="application-scenarios">
    <div class="title wow fadeInUp animated" data-wow-delay="0.3s">
        <span class="zuo"></span>
        <h4>BBR应用场景</h4>
        <span class="you"></span>
    </div>  
    <ul class="w1380 clearfix wow fadeInUp animated" data-wow-delay="0.5s">
        <li>
            <a href="#">
                <img src="/statics/default/images/yycj1.png" alt=""/>
                <p>购买开心红小豆相关物品获得收益</p>
            </a>
        </li>
        <li>
            <a href="#">
                <img src="/statics/default/images/yycj2.png" alt=""/>
                <p>购买豆在商城内相关物品</p>
            </a>
        </li>
        <li>
            <a href="#">
                <img src="/statics/default/images/yycj3.png" alt=""/>
                <p>支持平台新零售与广告平台等多项福利机制</p>
            </a>
        </li>
        <li>
            <a href="#">
                <img src="/statics/default/images/yycj4.png" alt=""/>
                <p>参与市场货币流通</p>
            </a>
        </li>
        <li>
            <a href="#">
                <img src="/statics/default/images/yycj5.png" alt=""/>
                <p>参与BBR平台多项福利活动</p>
            </a>
        </li>
        <li>
            <a href="#">
                <img src="/statics/default/images/yycj6.png" alt=""/>
                <p>持有BBR地址将拥有BBR商业平台多项权益</p>
            </a>
        </li>
    </ul>
</div>

<div class="w1380 bbrt-release">
    <div class="title wow fadeInUp animated" data-wow-delay="0.3s">
        <span class="zuo"></span>
        <h4>BBR释放</h4>
        <span class="you"></span>
    </div>  
    <div class="release-details">
        <div class="release-scheme wow fadeInLeft animated" data-wow-delay="0.5s">
            <span>BBR 作为流通于全球可信商业生态的代币，基于 ERC20，总量恒定为 25 亿枚的 BBR。具体分配方案如下：</span>
            <p>分配 60%，计 15.0 亿枚用于挖矿、平台应用场景长期分配；</p>
            <p>分配 10%，计 2.5 亿枚用于私募及宣传推广成本；</p>
            <p>分配 10%，计 2.5 亿枚用于未来产品预留分配；</p>
            <p>分配 10%，计 2.5 亿枚用于加盟商户保证金沉淀；</p>
            <p>分配 10%，计 2.5 亿枚用于创始人团队奖励池。</p>
        </div>
        <div class="release-img wow fadeInRight animated" data-wow-delay="0.8s"><img src="/statics/default/images/bbrt-sf.png" alt=""/></div>
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