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
            </div>
            <div class="Popular-articles">
                <h6>{:getCategory(27,'catname')}</h6>
                <ul>
                    <content action="lists" catid="27" order="updatetime desc" num="8">
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
        <div class="new-right wow fadeInRight animated" data-wow-delay="0.6s">
            <div class="new-column">
                <a href="{:getCategory(15,'url')}">全部</a><em>|</em><a href="{:getCategory(23,'url')}">{:getCategory(23,'catname')}</a><em>|</em><a href="{:getCategory(24,'url')}">{:getCategory(24,'catname')}</a>
            </div>
            <ul>
            <content action="lists" catid="$catid" order="listorder desc,updatetime desc" num="6" page="$page">
                <volist name="data" id="vo">
                <li class="clearfix">
                    <a href="{$vo.url}" class="images"><img src="{$vo.thumb}" alt=""/></a>
                    <div class="new-matter">
                        <a href="{$vo.url}" class="new-matter-title">{$vo.title}</a>
                        <p>
                            <span>概述：</span>
                            {$vo.description}
                        </p>
                        <div class="time">{$vo.updatetime|date="Y-m-d",###}</div>
                    </div>
                </li>
                </volist>
            </content>
                
            </ul>
            <div class="skip clearfix">
                {$pages}
            </div>
            <!-- <a href="#" class="djckgd">点击查看更多</a> -->
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
