<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{$Config.sitename}</title>
<link type="text/css" rel="stylesheet" href="{$config_siteurl}statics/css/Base.css" />
</head>
<body>
<div id="login">
    <h1 class="tit">网站信息管理系统</h1>
    
    <form id="loginform" method="post" name="loginform" action="{:U('Public/tologin')}" >
        <dl class="login_dl">
            <dt><img src="{$config_siteurl}statics/images/Img_01.jpg" /></dt>
            <dd>
                <ul class="login_ul">
                    <li class="Icon_01"><input type="text" value="用户名" class="loginText input_T" id="u" name="username" /></li>
                    <li class="Icon_02"><input type="text" value="密码" class="loginText input_T" id="tp" /><input id="p"  maxlength='16' name="password" type="password" value="" class="loginText input_T hide" /></li>
                </ul>
                
                <p class="login_p">
                    <span><input type="button" value="登录" class="loginBtn" onclick="toLogin();" /></span>
                    <!-- <em>
                        <input name="auto_login" type="checkbox" value="1" class="" />
                        下次自动登录
                    </em> -->
                </p> 
            </dd>
        </dl>
    </form>
</div>
<div id="foot" class="foot">
    <p>Content Manage System Powered By:©JBR-PCMS Version:V2.0 CopyRight 2014-2016.</p>
</div>
<div id="bgstretcher" class="bgstretcher" ></div>
<script type="text/javascript" src="{$config_siteurl}statics/js/jquery.js"></script>
<script type="text/javascript" src="{$config_siteurl}statics/js/bgstretcher.js"></script>
<script type="text/javascript" src="{$config_siteurl}statics/js/aes.js"></script>
<script type="text/javascript" src="{$config_siteurl}statics/js/crypto-js.js"></script>
<script type="text/javascript">
	$('body').bgStretcher({
		images: ['{$config_siteurl}statics/images/login-bg.jpg'],
		imageWidth: 1426,
		imageHeight: 791,
		transitionEffect: 'none',
		sequenceMode: 'normal',
		buttonPrev: '#cclb-btn-prev',
		buttonNext: '#cclb-btn-next',
		nextSlideDelay: '0',
		preloadImg: true
		//pagination: '#nav'
	});

	function toLogin(){
	
		var text = "Jj56q1CrI7oi4555";
		
		var uname = $("#u").val();
		var pass = $("#p").val();
		
		var key = CryptoJS.enc.Hex.parse("e10adc3949ba59abbe56e057f20f883e"); 
		var iv  = CryptoJS.enc.Hex.parse("1234567890abcdef1234567890abcdef");  
		var opinion = {iv:iv, padding:CryptoJS.pad.ZeroPadding};
		var uname_encrypted = CryptoJS.AES.encrypt(uname, key, opinion);  
		var pass_encrypted = CryptoJS.AES.encrypt(pass, key, opinion);
		uname_encrypted = uname_encrypted.toString();  
		pass_encrypted = pass_encrypted.toString();  
		
		$("#u").val(uname_encrypted);
		$("#p").val(pass_encrypted);
		
		$("#loginform").submit();
	}
</script>
<!--输入框清空事件-->
<script type="text/javascript">
$(function(){
	$("#u").focus(function(){
		if($(this).val() == this.defaultValue){
			$(this).val("");
		};
	});
	$("#u").blur(function(){
		if($(this).val() == ""){
			$(this).val(this.defaultValue);
		};
	});
	
	$("#tp").focus(function(){
		$("#tp").addClass("hide");
		$("#p").removeClass("hide");
		$("#p").focus();
	});
	
	$("#p").blur(function(){
		if($(this).val() == ""){
			$(this).val("");
			$("#tp").removeClass("hide");
			$("#p").addClass("hide");
		}
	});
});
</script>
</body>
</html>

