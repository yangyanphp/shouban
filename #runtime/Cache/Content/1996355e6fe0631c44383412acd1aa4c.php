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
<body class="J_scroll_fixed">
<div class="wrap J_check_wrap">
  <?php  $getMenu = isset($Custom)?$Custom:D('Admin/Menu')->getMenu(); if($getMenu) { ?>
<div class="nav">
  <?php
 if(!empty($menuReturn)){ echo '<div class="return"><a href="'.$menuReturn['url'].'">'.$menuReturn['name'].'</a></div>'; } ?>
  <ul class="cc">
    <?php
 foreach($getMenu as $r){ $app = $r['app']; $controller = $r['controller']; $action = $r['action']; ?>
    <li <?php echo $action==ACTION_NAME ?'class="current"':""; ?>><a href="<?php echo U("".$app."/".$controller."/".$action."",$r['parameter']);?>"><?php echo $r['name'];?></a></li>
    <?php
 } ?>
  </ul>
</div>
<?php } ?>
  <div class="h_a">推荐位修改</div>
  <form name="myform" action="<?php echo U("add");?>" method="post" class="J_ajaxForm">
  <div class="table_full"> 
  <table width="100%" class="table_form contentWrap">
        <tr>
          <th  width="80">推荐位名称</th>
          <td><input type="text" name="info[name]" value="" class="input length_4" id="name"/></td>
        </tr>
        <tr>
          <th>所属模型</th>
          <td><?php echo \Form::checkbox($modelinfo,$modelid,'name="info[modelid][]" onchange="category_load();"','');?></tr>
        <tr>
          <th>所属栏目</th>
          <td id="load_catid"></td>
        </tr>
        <tr>
          <th>排序</th>
          <td><input type="text" name="info[listorder]" id="listorder" class="input" size="5" value="0"/></td>
        </tr>
        <tr>
          <th>最大保存条数</th>
          <td><input type="text" name="info[maxnum]" id="maxnum" class="input" size="5" value="10"/> <span>条</span></td>
        </tr>
      </table>
  </div>
  <div class="">
      <div class="btn_wrap_pd">             
        <button class="btn btn_submit mr10 J_ajax_submit_btn" type="submit">提交</button>
      </div>
    </div>
  </form>
</div>
<script src="<?php echo ($config_siteurl); ?>statics/js/common.js"></script>
<script type="text/javascript">
$(function(){
	category_load();
});
function category_load(){
	var modelid = '';
	$('input[name="info[modelid][]"]').each(function() {
		if ($(this).attr("checked")) {
			if(modelid){
				modelid += ','+$(this).val();
			}else{
				modelid = $(this).val();
			}
		}
	});
	$.get(GV.DIMAUB+'index.php?a=public_category_load&m=Position&g=Content&modelid='+modelid,function(data){
		$('#load_catid').html(data);
	});
}
</script>
</body>
</html>