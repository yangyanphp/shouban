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
<template file="Content/footer.php"/>

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
