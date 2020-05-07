<?php if (!defined('THINK_PATH')) exit();?>﻿<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>BBR</title>
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
﻿<div class="header">
    <div class="w1380 iheader">
        <a href="#" class="logo"><img src="/statics/default/images/logo.png" alt=""/></a>
        <div class="header-right">
            <div class="nav-box">
                <ul class="nav-ul clearfix">
                    <li class="nav-list">
                        <h3><a href="/">首页</a></h3>
                    </li>
                    <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "category")){ $data = $content_tag->category(array('action'=>'category','catid'=>'0','order'=>'listorder asc','num'=>'0','page'=>'0','pagefun'=>'page','return'=>'data',)); } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li class="nav-list">
                        <h3><a href="<?php echo ($vo["url"]); ?>"><?php echo ($vo["catname"]); ?></a></h3>
                        <ul>
                        <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "category")){ $data1 = $content_tag->category(array('action'=>'category','catid'=>$vo['catid'],'order'=>'listorder asc','return'=>'data1','num'=>'0','page'=>'0','pagefun'=>'page',)); } if(is_array($data1)): $i = 0; $__LIST__ = $data1;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$va): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($va["url"]); ?>"><?php echo ($va["catname"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                        </ul>
                    </li><?php endforeach; endif; else: echo "" ;endif; ?>
                </ul>
            </div>
            <div class="font-select">
                <span>繁体中文</span>
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
                <h5><a href="#">首页</a></h5>
            </li>
            <li class="ydd-nav-li">
                <h5><a href="#">BBR DAPP</a></h5>
                <ul class="clearfix">
                    <li><a href="#">开心红小豆</a></li>
                    <li><a href="#">豆在商城</a></li>
                    <li><a href="#">豆里玩</a></li>
                </ul>
            </li>
            <li class="ydd-nav-li">
                <h5><a href="#">BBR TOKEN</a></h5>
            </li>
            <li class="ydd-nav-li">
                <h5><a href="#">以太坊浏覽器</a></h5>
            </li>
            <li class="ydd-nav-li">
                <h5><a href="#">BBR白皮書</a></h5>
            </li>
            <li class="ydd-nav-li">
                <h5><a href="#">更多</a></h5>
                <ul class="clearfix">
                    <li><a href="#">錢包</a></li>
                    <li><a href="#">交易所</a></li>
                    <li><a href="#">以太坊浏覽器</a></li>
                    <li><a href="#">新聞資訊</a></li>
                    <li><a href="#">關于我們</a></li>
                </ul>
            </li>
            <li class="ydd-nav-li">
                <h5><a href="#">我的賬戶</a></h5>
            </li>
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
                <div class="answer">BBRT是由BBR商基链发行的基于BBR的商业代币，简称BBRT。</div>
            </div>
            <div class="bbrt-synopsis">
                BBRT建立经济领域里去中心化的自治管理和发展组织结构。在充分利用区块链技术的去中心化、不可篡改及公平公正，以重塑以往应用体系中构建用户价值系统，再造领域的新业态价值。
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
                <p>持有BBRT地址将拥有BBR商业平台多项权益</p>
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
            <span>BBRT 作为流通于全球可信商业生态的代币，基于 ERC20，总量恒定为 25 亿枚的 BBRT。具体分配方案如下：</span>
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
                <div class="Platform-code">
                    <p>开心红小豆下载</p>
                    <img src="/statics/default/images/ewm1.jpg" alt=""/>
                </div>
                <div class="Platform-code">
                    <p>imToken钱包下载</p>
                    <img src="/statics/default/images/ewm2.jpg" alt=""/>
                </div>
                <div class="Platform-code">
                    <p>XT.com交易所下载</p>
                    <img src="/statics/default/images/ewm3.jpg" alt=""/>
                </div>
                <div class="Platform-code">
                    <p>公众号：BBR商基链</p>
                    <img src="/statics/default/images/ewm4.jpg" alt=""/>
                </div>
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