<#assign form=JspTaglibs["http://www.springframework.org/tags/form"]>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>数据同步项目</title>
<link href="../../css/global.css" rel="stylesheet" type="text/css" />
<link href="../../css/jquery.qtip.min.css" rel="stylesheet" type="text/css" />
<style type="text/css">
#login{margin-top:200px;}
#checkcodeimage{cursor:pointer; vertical-align:top;}
#name{width:148px;height:20px;}
#pwd{width:148px;height:20px;}
#checkcode{width:80px;height:20px;}
</style>
<script language="javascript" src="../../js/jquery-1.10.1.min.js"></script>
<script language="javascript" src="../../js/jquery.validate.min.js"></script>
<script language="javascript" src="../../js/messages_zh.js"></script>
<script language="javascript" src="../../js/jquery.form.min.js"></script>
<script language="javascript" src="../../js/jquery.qtip.min.js"></script>

<script language="javascript">
		$(function(){
			
			 $('[alt]').qtip({
				content:{attr:'alt'},
				position: {my: 'center left', at: 'center right'},			
			});
			
			$(window).keydown(function(event){
					if(event.keyCode==13) {
					 $("#btnOk").trigger("click");
					}
				});
			
			$("#btnOk").click(function(){				
				$("#tuser").validate();				
				if(!$("#tuser").valid()){								
					return false;
				}				
				$("#tuser").ajaxSubmit({
					url:"../login/login.do",
					type:'POST',
					dataType:'json',
					success:function(data){
						if(data.success){							
							top.location.href=data.url;
						}
						else{							
							alert(data.msg);							
						}					
					}
				});
				
				return false;				
							
			});
			
			$("#checkcodeimage").click(function(){				
				$("#checkcodeimage")[0].src="../checkcode/make.do?r="+Math.random();
			});
			
			
		});
		
	</script>
</head>

<body>
<@form.form action="" class="formInfo" modelAttribute="tuser" method="post" target="_top">
  <table id="login" border="0" align="center" cellpadding="3" cellspacing="0">
    <tr>
      <td>登录账号</td>
      <td><input type="text" name="name" id="name" class="required" alt="登录账号" /></td>
    </tr>
    <tr>
      <td>登录密码</td>
      <td><input type="password" name="pwd" id="pwd" class="required" alt="登录密码" /></td>
    </tr>
    <tr>
      <td>验&nbsp;&nbsp;证&nbsp;&nbsp;码</td>
      <td><span class="number">
        <input type="text" name="checkcode" id="checkcode" class="required" alt="验证码" />
      <img src="../checkcode/make.do?r=${r}"  alt="看不清楚？点击重新生成一个。" name="checkcodeimage" id="checkcodeimage" /></span></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td align="center"><input type="button" name="btnOk" id="btnOk" value="登录" /> 
        <input type="reset" name="btnReset" id="btnReset" value="重置" /></td>
    </tr>
  </table>
 </@form.form>
</body>
</html>
