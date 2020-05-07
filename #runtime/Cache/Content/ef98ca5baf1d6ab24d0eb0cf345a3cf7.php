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
    <div class="sbkj-abstract">
        <div class="w1380 wow fadeInUp animated" data-wow-delay="0.3s">
            <div class="sbkj-logo"><img src="/statics/default/images/sbkj-logo.png" alt=""/></div>
            <div class="brief-introduction">
                <div class="brief-introduction-title">
                    <div class="en">COMPANY PROFILE</div>
                    <div class="cn">公司简介</div>
                </div>
                <div class="brief-introduction-nr">
                    <p>
                        手伴科技团队成立于2017年9月，是一家以区块链应用领域科研开发，运营的高技术、高附加值，高级专业人才密集的企业。公司创始团队均具备科技及互联网产业领域十五年以上的从业经验，在相关的各领域多有成就。本应用所属于手伴科技团队旗下的海南手伴电子竞技公司。公司从事于互联网及区块链中商业新零售数据采集、应用开发及与商业及娱乐平台的研发、运营，管维。还包括其他区块链专业领域的软硬件产品研发、制造、服务。
                    </p>
                    <p>
                        在商业与科技的商业结合的创意中，我们相信我们将会具备领先于同行业的洞察力和执行、运营能力。而开心红小豆区块链社交财富平台就是我们首创的面对未来商业社会发展的创新生态。
                    </p>
                    <p>
                        执着、细致、凝聚、高远是我们的企业文化，价值来自大众是我们的发展理念，更是我们的宣言。这不仅体现在区块链产业中，也同样包括未来我们发展的各个领域之中。面对如此美好的发展机遇，希望更多的人与我们共同执手，分享未来。
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="w1380 team-members">
        <div class="team-members-title wow fadeInUp animated" data-wow-delay="0.3s">
            <div class="en">OUR CREW</div>
            <div class="cn">团队成员</div>
        </div>
        <ul class="clearfix wow fadeInUp animated" data-wow-delay="0.5s">
        <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "lists")){ $data = $content_tag->lists(array('action'=>'lists','catid'=>'36','order'=>'listorder asc','num'=>'0','page'=>'0','pagefun'=>'page','return'=>'data',)); } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li>
                <a>
                    <div class="img"><img src="<?php echo ($vo["thumb"]); ?>" alt=""/></div>
                    <div class="tdcy-xx">
                        <div class="name"><?php echo ($vo["title"]); ?></div>
                        <div class="duty-full-title"><?php echo ($vo["description"]); ?></div>
                    </div>
                </a>
            </li><?php endforeach; endif; else: echo "" ;endif; ?>
            
        </ul>
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