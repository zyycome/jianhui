<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
<script src="../../js/jquery-1.10.1.min.js"></script>
<script language="javascript">
		
		$(function(){
			
			$("#chkAll").click(function(){				
				$("input.chkId").each(function(){
					$(this)[0].checked=$("#chkAll")[0].checked;
				});		
			});
			
			$("#goinput").keydown(function(event){								
				 if (event.keyCode == 13) {
                	$("#gobutton").trigger("click");
            	}
			});
			
			$("#gobutton").click(function(){				
				$("#form1")[0].action="../config/list.do";
				pageindex=$("#goinput").val();
				if($.isNumeric(pageindex)){
					$("#pageindex").val(pageindex);
					$("#form1")[0].submit();
				}
			});
			
			$("#btnFind").click(function(){								
				$("#form1")[0].submit();
			});
			
			$("#deletebatch").click(function(){				
				$("#form1")[0].action="../../freemarker/config/deletebatch.do";
				$("#form1")[0].submit();
				return false;
			});	
			
			$("a.delete").click(function(){				
				if(!confirm("你确定要删除吗？")){
					return false;
				}
				return true;
			});						
			
		});
</script>
</head>

<body>
<div>
<form id="form1" name="form1">

<table width="98%" border="0" align="center" cellpadding="3" cellspacing="0">
  <tr>
    <td width="39%" align="right"><a href="../../freemarker/config/add.do">新增</a> <a class="delete" id="deletebatch" href="#">批量删除</a> <a href="../../freemarker/main/index.do">返回主列表</a> 任务实例：
      <input name="taskname" type="text" id="taskname" value="${tconfig.taskname}" />
      <input type="button" name="btnFind" id="btnFind" value="查找" /></td>
  </tr>
</table>
<br />
<table width="98%" border="0" cellpadding="3" cellspacing="0" align="center">
  <tr>
    <td align="center"><input type="checkbox" name="chkAll" id="chkAll" />
      选择</td>
    <td align="center">流水号</td>
    <td align="center">同步字段</td>
    <td align="center">数据源表</td>
    <td align="center">主键字段</td>
    <td align="center">当前同步ID</td>
    <td align="center">任务实例</td>
    <td align="center">是否可用</td>
    <td align="center">备注</td>
    <td align="center">操作</td>
  </tr>
  <#list configlist as tconfig>
  <tr>
    <td align="center"><input class="chkId" name="ids" type="checkbox" id="ids" value="${tconfig.id}" /></td>
    <td align="center">${tconfig.id}</td>
    <td>${tconfig.fields}</td>
    <td align="center">${tconfig.sourcetable}</td>
    <td align="center">${tconfig.keyfield}</td>
    <td align="center">${tconfig.curid}</td>
    <td align="center">${tconfig.taskname}</td>
    <td align="center">${tconfig.enableflag}</td>
    <td align="center">${tconfig.remark}</td>
    <td align="center"><a href="../../freemarker/config/edit.do?id=${tconfig.id}">修改</a> <a class="delete" href="../../freemarker/config/delete.do?id=${tconfig.id}">删除</a></td>
  </tr>
  </#list>
</table>
<br />
<table width="98%" border="0" align="center" cellpadding="3" cellspacing="0">
  <tr>
    <td align="right"><input name="pageindex" type="hidden" id="pageindex" value="${paginationutil.pageindex}" />
${paginationutil.list} ${paginationutil.goinput} ${paginationutil.gobutton}</td>
  </tr>
</table>
</form>
</div>
</body>
</html>
