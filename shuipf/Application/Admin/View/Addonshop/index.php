<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<Admintemplate file="Common/Head"/>
<body>
<div class="wrap J_check_wrap" id="loadhtml">
  <Admintemplate file="Common/Nav"/>
  <div class="h_a">说明</div>
  <div class="prompt_text">
    <ul>
      <li>插件管理可以很好的扩展网站运营中所需功能！</li>
      <li><font color="#FF0000">获取更多插件请到官方网站插件扩展中下载安装！安装非官方发表插件需谨慎，有被清空数据库的危险！</font></li>
    </ul>
  </div>
  <div class="loading">loading...</div>
</div>
<script src="{$config_siteurl}statics/js/common.js"></script>
<script>
$(function(){
	$.get('{:U("index")}',{ page:'{$page}' },function(data){
		$('#loadhtml').append(data);
		$('div.loading').hide();
	});
});
</script>
</body>
</html>