$(function() {
	// 表单验证
	var regHuaWeiNum = /^[a-zA-Z0-9_-]{4,50}$/;
	var regPhone = /^1[34578]\d{9}$/;
	var regMessageCode = /\d{6}/;
	var regMail = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
	var regPasswd = /^[\w_-]{6,16}$/;
	
	var flag = 0;

	$('#accountInput').blur(function() {
		if ($('#accountInput').val() == '') {
			$('#errorTips').html('请输入您的账号');
			$('#errorIcon').css('display', 'inline-block');
		} else {
			var a = regHuaWeiNum.test($('#accountInput').val());
			if (!a) {
				// $('#errorIcon').css('display', 'inline-block');
				// $('#errorTips').html('华为帐号限制在4~50个字符');
				// flag = 1;
			} else {
				$('#errorTips').html('');
				$('#errorIcon').css('display', 'none');
				flag = 0;
			}
		}
	})

	$('#passwdInput').blur(function() {
		if ($('#accountInput').val() != '' && flag != 1 && $('#passwdInput').val() == '') {
			$('#errorTips').html('请输入您的密码');
			$('#errorIcon').css('display', 'inline-block');
		} else if ($('#accountInput').val() == '') {
			$('#errorTips').html('请输入您的账号');
			$('#errorIcon').css('display', 'inline-block');
		} else if(flag == 1) {
			$('#errorIcon').css('display', 'inline-block');
			$('#errorTips').html('华为帐号限制在4~50个字符');
		} else {
			var a = regPasswd.test($('#passwdInput').val());
			if (!a) {
				$('#errorIcon').css('display', 'inline-block');
				$('#errorTips').html('密码由6~16个字符组成');
				flag = 2;
			} else {
				$('#errorTips').html('');
				$('#errorIcon').css('display', 'none');
				flag = 0;
			}
		}
	})


	var clickNum = 0;
	$('#rememberCheckBox').click(function() {
		clickNum++;
		if (clickNum % 2 == 0) {
			$('#rememberCheckBox').css('backgroundImage', 'url(img/loginAndRegister/checkBoxIcon.png)')
		} else {
			$('#rememberCheckBox').css('backgroundImage', 'url(img/loginAndRegister/checkIcon.png)')
		}
	})

	$('#loginBtn').click(function() {
		if ($('#accountInput').val() == '') {
			$('#errorTips').html('请输入您的账号');
			$('#errorIcon').css('display', 'inline-block');
		} 
		else if(flag == 1 ) {
			// $('#errorIcon').css('display', 'inline-block');
			// $('#errorTips').html('华为帐号限制在4~50个字符');
		}  else if ($('#accountInput').val() != '' && $('#passwdInput').val() == '' && flag == 0) {
			$('#errorTips').html('请输入您的密码');
			$('#errorIcon').css('display', 'inline-block');
		} else if (flag == 2) {
			$('#errorIcon').css('display', 'inline-block');
			$('#errorTips').html('密码由6~16个字符组成');
		} else {//正常走到这里，就表示前端验证所有项已经通过
			$('#errorTips').html('');
			$('#errorIcon').css('display', 'none');
			/**
			 * 1. 同步请求：页面要刷新、阻塞
			 *    1.1 表单提交<form action="后端接口" method="post"></form>
			 *    1.2 超级链接访问<a href="后端接口?参数名=参数值">登录</a>
			 *    1.3 浏览器的URL直接访问http://localhost:8080/login?account=18085852526&password=123456
			 * 2. 异步请求：页面无刷新、非阻塞
			 *    2.1 ajax
			 */
			//通过ajax将参数传递给后端(接收参数-进行业务逻辑处理-数据访问-响应)
			//获取输入框的值
			var account = $('#accountInput').val();
			var password = $('#passwdInput').val();
            $.ajax({
				url:"/user/login",//提交后端接口URI地址
				type:"get",//提交方式get post delete put
				data:{account:account,password:password},//提交参数--传递给后端参数
				dataType:"json",//后端返回的结果数据类型:json、text、html、javascript.....
				success:function(res){//访问成功后回调函数--res表示后端返回的结果所对应的变量名 res = resultMap
					console.log(res)
                    if(res.code == 0){//登录成功
						//取出登录成功后的用户信息,存储在本地
						localStorage.setItem("user",JSON.stringify(res.data))
                        //  //跳转到登录成功后的首页
						 window.location.href = "/index.html";
					}
					if(res.code == 500){//错误
						$('#errorIcon').css('display', 'inline-block');
						$('#errorTips').html(res.msg);
					}
				}
			})


		}
	})

	// 扫码登陆
	$('#hoverArear').hover(
		function() {
			$('#codeBox').css('left', '0');
			$('#phoneIconBox').css('opacity', '1');
		},
		function() {
			$('#codeBox').css('left', '75px')
			$('#phoneIconBox').css('opacity', '0');
		}
	)

	// 登陆切换 
	$('#scanLogin').click(function() {
		$('#acountLoginBox').css('display', 'none');
		$('#scanLoginBox').css('display', 'block');
		$('#scanLogin').css('color', '#B40707');
		$('#acountLogin').css('color', '#333');

	})
	$('#acountLogin').click(function() {
		$('#acountLoginBox').css('display', 'block');
		$('#scanLoginBox').css('display', 'none');
		$('#scanLogin').css('color', '#333');
		$('#acountLogin').css('color', '#B40707');
	})

})