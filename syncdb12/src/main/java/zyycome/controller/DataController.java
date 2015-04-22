package zyycome.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import zyycome.db2.pojo.TData;
import zyycome.db2.service.DataService;
import zyycome.util.PageInfo;
import zyycome.utils.PaginationUtil;

@SuppressWarnings("all")
@Controller
@RequestMapping({"/freemarker"})
public class DataController {
	@Autowired private DataService dataservice;
	@Autowired private PaginationUtil paginationutil;
	
	@InitBinder
	protected void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) throws Exception {
	    DateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
	    fmt.setLenient(false);  
	    CustomDateEditor dateEditor = new CustomDateEditor(fmt, false);
	    binder.registerCustomEditor(Date.class, dateEditor);
	}
	
	@RequestMapping({"/data/list"})
	public String list(HttpServletRequest request,PageInfo pageinfo,Model model,@ModelAttribute("tdata") TData tdata) {
		Map map=new HashMap();
		if(!StringUtils.isEmpty(tdata.getSourcetable())){
			pageinfo.setPageindex(1L);
			map.put("sourcetable", "%"+tdata.getSourcetable()+"%");
		}
		if(!StringUtils.isEmpty(tdata.getData())){
			pageinfo.setPageindex(1L);
			map.put("data", "%"+tdata.getData()+"%");
		}
		map.put("limit", pageinfo.getPagesize());
		map.put("offset", (pageinfo.getPageindex()-1)*pageinfo.getPagesize());
		List list=dataservice.list(map);
		Long totalcount=dataservice.count(map);
		StringBuffer pageparam=new StringBuffer();
		if(!StringUtils.isEmpty(tdata.getSourcetable())){
			pageparam.append("&sourcetable="+tdata.getSourcetable());
		}
		if(!StringUtils.isEmpty(tdata.getData())){
			pageparam.append("&data="+tdata.getData());
		}
		paginationutil.setPageindex(pageinfo.getPageindex());
		paginationutil.setPagesize(pageinfo.getPagesize());
		paginationutil.setShowsize(pageinfo.getShowsize());
		paginationutil.setPageurl("../data/list.do");
		paginationutil.setPageparam(pageparam.toString());
		paginationutil.setTotalcount(totalcount);		
		paginationutil.build();
		model.addAttribute("datalist",list);
		model.addAttribute("paginationutil",paginationutil);		
		model.addAttribute("tdata",tdata);
		return "/data/list";
	}
	
	@RequestMapping({"/data/delete"})
	public String delete(HttpServletRequest request,@RequestParam(value = "id", required = false) Long id) {
		String referer = request.getHeader("REFERER");
		dataservice.delete(id);
		return "redirect:"+referer;
	}
	
	@RequestMapping({"/data/deletebatch"})
	public String deletebatch(HttpServletRequest request,@RequestParam(value = "ids", required = false) Long[] ids) {
		String referer = request.getHeader("REFERER");
		dataservice.delete(ids);
		return "redirect:"+referer;
	}

}
