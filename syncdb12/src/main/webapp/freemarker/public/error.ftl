<#assign form=JspTaglibs["http://www.springframework.org/tags/form"]>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>错误提示</title>
<link href="../../css/global.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.c{
	margin:0 auto;
	text-align:center;
	font-size:0;
}
#goinput{width:50px;}
#prompt{margin-top:200px;}
</style>
<link href="../../css/jquery.qtip.min.css" rel="stylesheet" type="text/css">
<script language="javascript" src="../../js/jquery-1.10.1.min.js"></script>
<script language="javascript" src="../../js/jquery.validate.min.js"></script>
<script language="javascript" src="../../js/messages_zh.js"></script>
<script language="javascript" src="../../js/jquery.form.min.js"></script>
<script language="javascript" src="../../js/My97DatePicker/WdatePicker.js"></script>
<script language="javascript" src="../../js/jquery.qtip.min.js"></script>
<script language="javascript">
		
		$(function(){
		
		});
</script>
</head>

<body>
<table id="prompt" width="400" border="0" align="center" cellpadding="3" cellspacing="0">
  <tr>
    <td align="center">出错了：${msg}  <a href="javascript:history.back()">返回</a></td>
  </tr>
</table>
</body>
</html>
