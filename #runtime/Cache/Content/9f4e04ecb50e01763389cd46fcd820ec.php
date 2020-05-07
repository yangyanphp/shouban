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
<body class="body_none" style="width:600px;">
<div class="wrap_pop">
  <div class="nav">
    <ul class="cc">
      <li class="current"><a href="<?php echo U('Content/Content/push',array('action'=>'position_list','modelid'=>$modelid,'catid'=>$catid,'id'=>$id));?>">推送到推荐位</a></li>
      <li ><a href="<?php echo U('Content/Content/push',array('action'=>'push_to_category','modelid'=>$modelid,'catid'=>$catid,'id'=>$id));?>">推送到其他栏目</a></li>
    </ul>
  </div>
  <form class="J_ajaxForm" action="<?php echo U('Content/push','action=position_list');?>" method="post">
  <input type="hidden" name="modelid" value="<?php echo ($modelid); ?>">
  <input type="hidden" name="catid" value="<?php echo ($catid); ?>">
  <input type='hidden' name="id" value='<?php echo ($id); ?>'>
    <div class="pop_cont pop_table" style="overflow-x:hidden;">
      <table width="100%">
        <colgroup>
        <col/>
        </colgroup>
        <tr>
          <th width="80">推荐位：</th>
          <td class="y-bg"><?php
 foreach($Position as $id=>$name){ ?>
            <label class="ib" style="width:120px">
              <input type="checkbox" name='posid[]'  value="<?php echo $id;?>">
              <?php echo $name;?></label>
            <?php
 } ?></td>
        </tr>
      </table>
    </div>
    <div class="pop_bottom">
      <button class="btn fr" id="J_dialog_close" type="button">取消</button>
      <button type="submit" class="btn btn_submit J_ajax_submit_btn fr mr10">提交</button>
    </div>
  </form>
</div>
<script src="<?php echo ($config_siteurl); ?>statics/js/common.js"></script>
</body>
</html>