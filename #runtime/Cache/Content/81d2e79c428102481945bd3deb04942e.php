<?php if (!defined('THINK_PATH')) exit();?><!--动态-->
<?php if($catid != getCategory($catid,'arrchildid')): $carr = explode(',', getCategory($catid,'arrchildid')); header('Location: /index.php?a=lists&catid=' . $carr[1]); endif; ?>





<!-- 
getCategory表示获取$catid下的arrchildid，然后将数组切割成字符串
取下标为1的字符串作为跳转的地址

此页面作为一个共用模板，相当于一个中转页面
-->