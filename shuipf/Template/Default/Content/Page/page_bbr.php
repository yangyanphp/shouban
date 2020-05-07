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
