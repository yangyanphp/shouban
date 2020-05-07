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
        <content action="lists" catid="36" order="listorder asc">
            <volist name="data" id="vo">
            <li>
                <a>
                    <div class="img"><img src="{$vo.thumb}" alt=""/></div>
                    <div class="tdcy-xx">
                        <div class="name">{$vo.title}</div>
                        <div class="duty-full-title">{$vo.description}</div>
                    </div>
                </a>
            </li>
            </volist>
        </content>
            
        </ul>
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
