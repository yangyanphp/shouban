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
<div class="wrap jj">
  <div class="nav">
    <ul class="cc">
      <li class="current"><a href="<?php echo U('Adminmanage/myinfo');?>">修改个人信息</a></li>
    </ul>
  </div>
  <!--====================用户编辑开始====================-->
  <form class="J_ajaxForm" id="J_bymobile_form" action="<?php echo U("Adminmanage/myinfo");?>" method="post">
    <input type="hidden" value="<?php echo ($data["id"]); ?>" name="id"/>
    <input type="hidden" value="<?php echo ($data["username"]); ?>" name="username"/>
    <div class="h_a">用户信息</div>
    <div class="table_full">
      <table width="100%">
        <col class="th" />
        <col/>
        <thead>
          <tr>
            <th>ID</th>
            <td><?php echo ($data["id"]); ?></td>
          </tr>
        </thead>
        <tr>
          <th>用户名</th>
          <td><?php echo ($data["username"]); ?></td>
        </tr>
        <tr>
          <th>姓名</th>
          <td><input name="nickname" type="text" class="input length_5 required" value="<?php echo ($data["nickname"]); ?>">
           <span id="J_reg_tip_nickname" role="tooltip"></span></td>
        </tr>
        <tr>
          <th>E-mail</th>
          <td><input name="email" type="text" class="input length_5" value="<?php echo ($data["email"]); ?>"></td>
        </tr>
        <tr>
          <th>备注</th>
          <td><textarea id="J_textarea" name="remark" style="width:400px;height:100px;"><?php echo ($data["remark"]); ?></textarea></td>
        </tr>
      </table>
    </div>
    <div class="">
      <div class="btn_wrap_pd">
        <button type="submit" class="btn btn_submit  J_ajax_submit_btn">提交</button>
      </div>
    </div>
  </form>
</div>
<script src="<?php echo ($config_siteurl); ?>statics/js/common.js?v"></script>
<script type="text/jscript">
Wind.use('validate','ajaxForm', function(){
	//表单js验证开始
	$("#J_bymobile_form").validate({
		//当未通过验证的元素获得焦点时,并移除错误提示
		focusCleanup:true,
		//错误信息的显示位置
		errorPlacement:function(error, element){
			//错误提示容器
			$('#J_reg_tip_'+ element[0].name).html(error);
		},
		//获得焦点时不验证 
		focusInvalid : false,
		onkeyup: false,
		//设置验证规则
		rules:{
			nickname:{
				required:true,//验证条件：必填
				byteRangeLength: [3,15]
			}
		},
		//设置错误信息
		messages:{
			nickname:{
				required: "请填写用户名", 
				byteRangeLength: "用户名必须在3-15个字符之间(一个中文字算2个字符)"
			}
		}
	});
});
</script>
</body>
</html>