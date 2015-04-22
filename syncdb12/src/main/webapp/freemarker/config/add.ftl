<#assign form=JspTaglibs["http://www.springframework.org/tags/form"]>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>配置表</title>
<link href="../../css/global.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.c{
	margin:0 auto;
	text-align:center;
	font-size:0;
}
#goinput{width:50px;}
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
		
			$('[tip]').qtip({
				content:{attr:'tip'},
				position: {my: 'center left', at: 'center right'},			
			});
			
			$("#btnBack").click(function(){												
				history.back();
			});
			
			$("#btnOk").click(function(){
                $("#tconfig").validate();				
				if(!$("#tconfig").valid()){								
					return false;
				}				
				$("#tconfig")[0].submit();
				return false;
			});		
			
		});
</script>
</head>

<body>
<@form.form action="../config/save.do" modelAttribute="tconfig" method="post">
  <table border="0" cellpadding="3" cellspacing="0">
    <tr>
      <td>同步字段</td>
      <td><input type="text" name="fields" id="fields" value="${tconfig.fields}" class="required" tip="同步字段列表" /></td>
    </tr>
    <tr>
      <td>数据源表</td>
      <td><input type="text" name="sourcetable" id="sourcetable" value="${tconfig.sourcetable}" class="required" tip="数据源表" /></td>
    </tr>
    <tr>
      <td>主键字段</td>
      <td><input type="text" name="keyfield" id="keyfield" value="${tconfig.keyfield}" class="required" tip="主键字段" /></td>
    </tr>
    <tr>
      <td>当前同步ID</td>
      <td><input type="text" name="curid" id="curid" value="${tconfig.curid}" class="required digits" tip="当前同步ID" /></td>
    </tr>
    <tr>
      <td>任务实例</td>
      <td><input type="text" name="taskname" id="taskname" value="${tconfig.taskname}" class="required" tip="任务实例" /></td>
    </tr>
    <tr>
      <td>是否可用</td>
      <td><input name="enableflag" type="text" id="enableflag" value="${tconfig.enableflag}" class="required" tip="是否可用" /></td>
    </tr>
    <tr>
      <td>备注</td>
      <td><input type="text" name="remark" id="remark" value="${tconfig.remark}" class="required" tip="备注" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="button" name="btnBack" id="btnBack" value="返回" />
        <input type="button" name="btnOk" id="btnOk" value="确定" />
      <input type="reset" name="btnReset" id="btnReset" value="重置" />
      <input type="hidden" name="id" id="id" value="${tconfig.id}" />
      <input type="hidden" name="referer" id="referer" value="${referer}" /></td>
    </tr>
  </table>
</@form.form>
</body>
</html>
