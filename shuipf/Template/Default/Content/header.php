<div class="header">
    <div class="w1380 iheader">
        <a href="#" class="logo"><img src="/statics/default/images/logo.png" alt=""/></a>
        <div class="header-right">
            <div class="nav-box">
                <ul class="nav-ul clearfix">
                    <li class="nav-list">
                        <h3><a href="/">首页</a></h3>
                    </li>
                    <content action="category" catid="0" order="listorder asc">
                        <volist name="data" id="vo">
                    <li class="nav-list">
                        <h3><a href="{$vo.url}" <if condition="$vo['catid'] eq 10">target="_blank"<else/></if>>{$vo.catname}</a></h3>
                        <ul>
                        <content action="category" catid="$vo['catid']" order="listorder asc" return="data1">
                            <volist name="data1" id="va">
                            <li><a href="{$va.url}">{$va.catname}</a></li>
                            </volist>
                        </content>
                        </ul>
                    </li>

                        </volist>
                    </content>
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
            <content action="category" catid="0" order="listorder asc">
            <content action="category" catid="$vo['catid']" order="listorder asc" return="data1">
                <volist name="data" id="vo">
            <li class="ydd-nav-li">
                <h5><a <if condition="$data1 eq null">href="{$vo.url}"<else/></if>>{$vo.catname}</a></h5>
                <ul class="clearfix">
                <content action="category" catid="$vo['catid']" order="listorder asc" return="data1">
                    <volist name="data1" id="va">
                        <li><a href="{$va.url}">{$va.catname}</a></li>
                    </volist>
                </content>
                </ul>
            </li>
                </volist>
            </content>
            </content>
        </ul>
    </div>
</div>