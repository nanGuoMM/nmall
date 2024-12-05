$(function() {
	var regPhone = /^1[34578]\d{9}$/;
	var regMail = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
	var regPasswd = /^[\w_-]{6,16}$/;

	$('#phoneNumInput').blur(function() {
		if ($('#phoneNumInput').val() == '') {
			$('#phoneNumTips').html('请输入您的手机号码');
		} else {
			var a = regPhone.test($('#phoneNumInput').val());
			if (!a) {
				$('#phoneNumTips').html('手机号码不正确');
			} else {
				$('#phoneNumTips').html('');
			}
		}
	})

	$('#emailInput').blur(function() {
		if ($('#emailInput').val() == '') {
			$('#emailTips').html('请输入您的邮件地址');
		} else {
			var a = regMail.test($('#emailInput').val());
			if (!a) {
				$('#emailTips').html('邮件地址不正确');
			} else {
				$('#emailTips').html('');
			}
		}
	})

	$('#passwdInput').blur(function() {
		if ($('#passwdInput').val() == '') {
			$('#passwdTips').html('请输入您的密码');
		} else {
			var a = regPasswd.test($('#passwdInput').val());
			if (!a) {
				$('#passwdTips').html('密码不正确，密码由6~16个字符组成');
			} else {
				$('#passwdTips').html('');
			}
		}
	})

	$('#againPasswdInput').blur(function() {
		if ($('#againPasswdInput').val() == '') {
			$('#againPasswdTips').html('请再次输入您的密码');
		} else {
			var a = $('#passwdInput').val();
			if ($('#againPasswdInput').val() != a) {
				$('#againPasswdTips').html('密码与确认密码不一致');
			} else {
				$('#againPasswdTips').html('');
			}
		}
	})

	$('#registerBtn').click(function() {
		if ($('#phoneNumInput').val() == '') {
			$('#phoneNumTips').html('请输入您的手机号码');
		}
		if ($('#emailInput').val() == '') {
			$('#emailTips').html('请输入您的邮件地址');
		}
		if ($('#passwdInput').val() == '') {
			$('#passwdTips').html('请输入您的密码');
		}
		if ($('#againPasswdInput').val() == '') {
			$('#againPasswdTips').html('请再次输入您的密码');
		}
		//程序代码如果能正常走这里，就表示前端验证通过。
		//获取表单输入框的值
		var phone = $('#phoneNumInput').val();
		var email = $('#emailInput').val();
		var password = $('#passwdInput').val();
		// 将参数封装为js表单对象
		var userForm = {userTel:phone,userEmail:email,userPwd:password};
		// 表单参数传递给后端,搞清楚几个问题：后端接口、后端接收参数方式、如何传递给后端
		/**
		 * 前端传递参数给后端，主要有两种方式：
		 *    1. 同步请求：
		 *       1.1 表单提交 <form action="/user/register" method="get"></form>
		 *       1.2 超级链接 <a href="/user/register?phone=xxx&email=xxx"></a>
		 *       1.3 浏览器URL直接访问 http://localhost:8888/user/register?phone=1784847878&email=454544@qq.com&password=123
		 *    2. 异步请求: 前后端交互最常用方式
		 *       ajax - jQuery
		 */
		 $.ajax({
			 url:"/user/register", //后端的接口URI
			 type:"post", // 提交参数方式 get post
			 // data:userForm, // 提交参数值：js对象、json对象
			 data:JSON.stringify(userForm), // 提交参数值：js对象、json对象.JSON.stringify(userForm)将普通js对象转换为标准的json字符串对象
			 contentType:"application/json;charset=utf-8", //表示传递参数类型是json格式
			 dataType:"json", // 返回数据类型：text、script、json.....
			 success:function(res){ // 成功后的回调函数,res变量 = 后端返回的值
                  if(res.code == 0){//表示注册成功
					  //登录成功后3秒跳转到登录页面
					  setInterval(go,1000);
					  var count = 3;
					  function go(){
                           count--;
						   if(count > 0){
							   $('#messageTips').html("注册成功，还剩："+count+" 秒跳转到登录页面");
						   }else{
							   //跳转登录页面
							   window.location.href = "/login.html";
						   }
					  }
				  }
			 }
		 })


	})
})