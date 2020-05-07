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
<body class="body_none" style="width:690px; height:500px;">
<style>
.cu,.cu-li li,.cu-span span {cursor: hand;!important;cursor: pointer}
.line_ff9966,.line_ff9966:hover td{background-color:#FF9966}
.line_fbffe4,.line_fbffe4:hover td {background-color:#CCC}
.list-dot-othors li{float:none; width:auto}
</style>
<div>
  <form class="J_ajaxForm" action="<?php echo U('Content/push','action=push_to_category');?>" method="post">
    <input type="hidden" name="modelid" value="<?php echo ($modelid); ?>">
    <input type="hidden" name="catid" value="<?php echo ($catid); ?>">
    <input type='hidden' name="id" value='<?php echo ($id); ?>'>
    <input type='hidden' name='relation' value="" id="relation">
    <div class="pop_cont pop_table" style="overflow-x:hidden;height: 480px;">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <colgroup>
        <col width="320"/>
        <col/>
        </colgroup>
        <tr>
          <td><table width="99%" cellspacing="0">
              <colgroup>
              <col width="10"/>
              <col/>
              <col width="150"/>
              </colgroup>
              <thead>
                <tr>
                  <th>栏目ID</th>
                  <th >栏目名称</th>
                  <th>所属模型</th>
                </tr>
              </thead>
              <tbody id="load_catgory">
              </tbody>
            </table></td>
          <td align="left" valign="top"><div class="sql_list J_check_wrap" style="width:100%;">
              <dl>
                <dt> <span style="width:35px;">移除</span><span>栏目名称</span></dt>
                <dd style=" height:100%" id="catname">
                  
                </dd>
              </dl>
            </div></td>
        </tr>
      </table>
    </div>
  </form>
  <!--添加勋章弹窗--> 
</div>
<script src="<?php echo ($config_siteurl); ?>statics/js/common.js"></script> 
<script>
function select_list(obj, title, id) {
    var relation_ids = $('#relation').val();
    var sid = 'v' + id;
    $(obj).attr('class', 'line_fbffe4');
	var str = "<p id='" + sid + "'> <span style=\"width:35px;\"><input type=\"checkbox\" onclick=\"remove_id('" + sid + "')\"  class=\"J_check\" checked></span> <span>" + title + "</span> </p>";
	var add_othors_text = "<li id='" + sid + "'><span>" + title + "</span> <span style=\"width:35px;\"><a href='javascript:;;' onclick=\"remove_id('" + sid + "')\">[取消]</a></span><input type=\"hidden\" name='othor_catid[" + id + "]'  class=\"J_check\"></li>";
    $('#catname').append(str);
	window.top.$('#add_othors_text').append(add_othors_text);
    if (relation_ids == '') {
        $('#relation').val(id);
    } else {
        relation_ids = relation_ids + '|' + id;
        $('#relation').val(relation_ids);
    }
}
function change_siteid() {
    $("#load_catgory").load("<?php echo ($config_siteurl); ?>index.php?a=public_getsite_categorys&m=Content&g=Content&catid=<?php echo ($catid); ?>");
}
//移除ID
function remove_id(id) {
    $('#' + id).remove();
	$('#c' + id).removeClass("line_fbffe4").addClass("cu");
    window.top.$('#' + id).remove();
}
$(function () {
	change_siteid();
});
</script>
</body>
</html>