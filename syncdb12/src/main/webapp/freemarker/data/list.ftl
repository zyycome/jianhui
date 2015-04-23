<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>数据列表</title>
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
				$("#form1")[0].action="../data/list.do";
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
				$("#form1")[0].action="../../freemarker/data/deletebatch.do";
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
    <td width="39%" align="right"><a class="delete" id="deletebatch" href="#">批量删除</a> <a href="../../freemarker/main/index.do">返回主列表</a> 数据源表
      <input name="sourcetable" type="text" id="sourcetable" value="${tdata.sourcetable}" />
      数据内容：
<input name="data" type="text" id="data" value="${tdata.data}" />
      <input type="button" name="btnFind" id="btnFind" value="查找" /></td>
  </tr>
</table>
<br />
<table width="98%" border="0" cellpadding="3" cellspacing="0" align="center">
  <tr>
    <td align="center"><input type="checkbox" name="chkAll" id="chkAll" />
      选择</td>
    <td align="center">流水号</td>
    <td align="center">数据源表</td>
    <td align="center">数据内容</td>
    <td align="center">同步方式</td>
    <td align="center">同步标志</td>
    <td align="center">同步时间</td>
    <td align="center">回应标志</td>
    <td align="center">回应时间</td>
    <td align="center">操作</td>
  </tr>
  <#list datalist as tdata>
  <tr>
    <td align="center"><input class="chkId" name="ids" type="checkbox" id="ids" value="${tdata.id}" /></td>
    <td align="center">${tdata.id}</td>
    <td align="center">${tdata.sourcetable}</td>
    <td>${tdata.data?html}</td>
    <td align="center">${tdata.synctype}</td>
    <td align="center">${tdata.syncflag}</td>
    <td align="center">${(tdata.synctime?string("yyyy-MM-dd HH:mm:ss"))!}</td>
    <td align="center">${tdata.echoflag}</td>
    <td align="center">${(tdata.echotime?string("yyyy-MM-dd HH:mm:ss"))!}</td>
    <td align="center"><a class="delete" href="../../freemarker/data/delete.do?id=${tdata.id}">删除</a></td>
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
