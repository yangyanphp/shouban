<?php if (!defined('THINK_PATH')) exit(); if (!defined('SHUIPF_VERSION')) exit(); ?>
<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title><?php echo ($Config["sitename"]); ?></title>
<?php if (!defined('SHUIPF_VERSION')) exit(); ?><link href="<?php echo ($config_siteurl); ?>statics/css/admin_style.css" rel="stylesheet" />
<link href="<?php echo ($config_siteurl); ?>statics/js/artDialog/skins/default.css" rel="stylesheet" />
<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<script type="text/javascript">
//全局变量
var GV = {
    DIMAUB: "<?php echo ($config_siteurl); ?>",
	JS_ROOT: "<?php echo ($config_siteurl); ?>statics/js/"
};
</script>
<script src="<?php echo ($config_siteurl); ?>statics/js/jquery.js"></script>
<script src="<?php echo ($config_siteurl); ?>statics/js/wind.js"></script>
<script src="<?php echo ($config_siteurl); ?>statics/js/uploadPreview.min.js"></script>
</head>
<body>
<div class="wrap"> 
  <!--搜索开始-->
  <div class="h_a">有关“<span class="red"><?php echo ($keyword); ?></span>”的搜索结果</div>
  <div class="search_list">
  <?php
 foreach($menuData as $k=>$v): ?>
    <h2><?php echo str_replace($keyword,"<font color=\"red\">".$keyword."</font>",$menuName[$k])?></h2>
    <dl>
      <?php
 foreach($v as $id=>$men): $url = $men['app']."/".$men['model']."/".$men['action']; ?>
      <dd><a class="J_search_items" href="<?php echo U(''.$url.'',array('menuid'=>$men['id']) );?>" data-id="<?php echo ($men["id"]); echo ($men["app"]); ?>"><?php echo str_replace($keyword,"<font color=\"red\">".$keyword."</font>",$men['name'])?></a></dd>
      <?php
 endforeach; ?>
    </dl>
  <?php
 endforeach; ?>
  </div>
  <!--搜索结束-->
</div>
<script src="<?php echo ($config_siteurl); ?>statics/js/common.js?v"></script>
<script>
$(function(){
	$('a.J_search_items').on('click', function(e){
		e.preventDefault();
		var $this = $(this);
		var data_id = $(this).attr('data-id');
		var href = this.href;
		parent.window.iframeJudge({
			elem: $this,
			href: href,
			 id: data_id
		});
	});
});
</script>
</body>
</html>