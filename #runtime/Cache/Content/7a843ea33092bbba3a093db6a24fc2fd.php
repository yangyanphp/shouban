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
<style>
.pop_nav{
	padding: 0px;
}
.pop_nav ul{
	border-bottom:1px solid #266AAE;
	padding:0 5px;
	height:25px;
	clear:both;
}
.pop_nav ul li.current a{
	border:1px solid #266AAE;
	border-bottom:0 none;
	color:#333;
	font-weight:700;
	background:#F3F3F3;
	position:relative;
	border-radius:2px;
	margin-bottom:-1px;
}

</style>
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
  <div class="pop_nav">
    <ul class="J_tabs_nav">
      <li class="current"><a href="javascript:;;">基本属性</a></li>
    </ul>
  </div>
  <form class="J_ajaxForms" name="myform" id="myform" action="<?php echo U("Category/edit");?>" method="post">
    <div class="J_tabs_contents">
      <div>
        <div class="h_a">基本属性</div>
        <div class="table_full">
          <table width="100%" class="table_form ">
            <tr>
              <th width="200">上级栏目：</th>
              <td><select name="info[parentid]" id="parentid">
                  <option value='0'>≡ 作为一级栏目 ≡</option>
                  <?php echo ($category); ?>
                </select></td>
            </tr>
            <tr>
              <th>栏目名称：</th>
              <td><input type="text" name="info[catname]" id="catname" class="input" value="<?php echo ($data["catname"]); ?>"></td>
            </tr>
            <tr>
              <th>栏目缩略图：</th>
              <td><?php  echo call_user_func_array(array("\Form","images"),array('0'=>'info[image]','1'=>'image','2'=>$data['image'],'3'=>'content',)); ?><span class="gray"> 双击可以查看图片！</span></td>
            </tr>
            <tr>
              <th>栏目简介：</th>
              <td><textarea name="info[description]" maxlength="255" style="width:300px;height:60px;"><?php echo ($data["description"]); ?></textarea></td>
            </tr>
            <tr>
              <th>链接地址：</th>
              <td><input type="text" name="info[url]" id="catname" class="input length_6" value="<?php echo ($data["url"]); ?>"></td>
            </tr>
          </table>
        </div>
      </div>
    </div>
    <div class="">
      <div class="btn_wrap_pd">
        <input name="catid" type="hidden" value="<?php echo ($data["catid"]); ?>">
        <input name="type" type="hidden" value="2">
        <input name="info[child]" type="hidden"  value="0">
        <input name="info[modelid]" type="hidden"  value="9999">
        <input name="info[catdir]" type="hidden"  value="0">
        <button class="btn btn_submit mr10 " type="submit">提交</button>
      </div>
    </div>
  </form>
</div>
<script type="text/javascript" src="<?php echo ($config_siteurl); ?>statics/js/common.js?v"></script>
<script type="text/javascript" src="<?php echo ($config_siteurl); ?>statics/js/content_addtop.js"></script>
<script type="text/javascript">
$(function(){
    Wind.use('validate', 'ajaxForm', 'artDialog', function () {
        var form = $('form.J_ajaxForms');
        //ie处理placeholder提交问题
        if ($.browser.msie) {
            form.find('[placeholder]').each(function () {
                var input = $(this);
                if (input.val() == input.attr('placeholder')) {
                    input.val('');
                }
            });
        }
        //表单验证开始
        form.validate({
			//是否在获取焦点时验证
			onfocusout:false,
			//是否在敲击键盘时验证
			onkeyup:false,
			//当鼠标掉级时验证
			onclick: false,
            //验证错误
            showErrors: function (errorMap, errorArr) {
				//errorMap {'name':'错误信息'}
				//errorArr [{'message':'错误信息',element:({})}]
				try{
					$(errorArr[0].element).focus();
					art.dialog({
						id:'error',
						icon: 'error',
						lock: true,
						fixed: true,
						background:"#CCCCCC",
						opacity:0,
						content: errorArr[0].message,
						cancelVal: '确定',
						cancel: function(){
							$(errorArr[0].element).focus();
						}
					});
				}catch(err){
				}
            },
            //验证规则
            rules: {
				"info[catname]":{
					required:true
				},
				"info[url]":{
					required:true
				}
			},
            //验证未通过提示消息
            messages: {
				"info[catname]":{
					required:"栏目名称不能为空！"
				},
				"info[url]":{
					required:"链接地址不能为空！"
				}
			},
            //给未通过验证的元素加效果,闪烁等
            highlight: false,
            //是否在获取焦点时验证
            onfocusout: false,
            //验证通过，提交表单
            submitHandler: function (forms) {
                $(forms).ajaxSubmit({
                    url: form.attr('action'), //按钮上是否自定义提交地址(多按钮情况)
                    dataType: 'json',
                    beforeSubmit: function (arr, $form, options) {
                        
                    },
                    success: function (data, statusText, xhr, $form) {
                        if(data.status){
							//添加成功
							Wind.use("artDialog", function () {
							    art.dialog({
							        id: "succeed",
							        icon: "succeed",
							        fixed: true,
							        lock: true,
							        background: "#CCCCCC",
							        opacity: 0,
							        content: data.info,
									button:[
										{
											name: '继续添加新栏目？',
											callback:function(){
												window.location.href = "<?php echo U('Category/wadd');?>";
												return true;
											},
											focus: true
										},{
											name: '返回栏目管理页',
											callback:function(){
												window.location.href = "<?php echo U('Category/index',array('catid'=>$catid));?>";
												return true;
											}
										}
									]
							    });
							});
						}else{
							isalert(data.info);
						}
                    }
                });
            }
        });
    });
});
</script>
</body>
</html>