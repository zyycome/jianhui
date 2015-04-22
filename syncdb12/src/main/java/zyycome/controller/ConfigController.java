package zyycome.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
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

import zyycome.db2.pojo.TConfig;
import zyycome.db2.service.ConfigService;
import zyycome.util.PageInfo;
import zyycome.utils.PaginationUtil;

@SuppressWarnings("all")
@Controller
@RequestMapping({"/freemarker"})
public class ConfigController {
	
	@Autowired private ConfigService configservice;
	@Autowired private PaginationUtil paginationutil;
	
	@InitBinder
	protected void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) throws Exception {
	    DateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
	    fmt.setLenient(false);  
	    CustomDateEditor dateEditor = new CustomDateEditor(fmt, false);
	    binder.registerCustomEditor(Date.class, dateEditor);
	}
	
	@RequestMapping({"/config/add"})
	public String add(HttpServletRequest request,@RequestParam(value = "id", required = false) Long id,Model model) {
		String referer = request.getHeader("REFERER");
		TConfig tconfig=new TConfig();
		model.addAttribute("tconfig", tconfig);
		model.addAttribute("referer", referer);
		return "/config/add";
	}

	@RequestMapping({"/config/edit"})
	public String edit(HttpServletRequest request,@RequestParam(value = "id", required = false) Long id,Model model) {
		String referer = request.getHeader("REFERER");
		TConfig tconfig=configservice.load(id);
		model.addAttribute("tconfig", tconfig);
		model.addAttribute("referer", referer);
		return "/config/edit";
	}
	
	@RequestMapping({"/config/save"})
	public String save(HttpServletRequest request,@ModelAttribute("tconfig") TConfig tconfig,@RequestParam(value = "referer", required = false) String referer) {		
		Map map=new HashMap();
		map.put("taskname", tconfig.getTaskname());
		map.put("id", tconfig.getId());
		if(configservice.countTasknameId(map)>0){
			String msg="";
			try {
				msg = URLEncoder.encode("任务实例"+tconfig.getTaskname()+"已存在", "utf-8");
				
			} catch (UnsupportedEncodingException e) {				
			}
			return "redirect:../public/error.do?msg="+msg;
		}		
		if(tconfig.getId()==0L){
			configservice.save(tconfig);
			return "redirect:../config/list.do";
		}
		else{
			TConfig tconfigdb=configservice.load(tconfig.getId());			
			tconfigdb.setFields(tconfig.getFields());
			tconfigdb.setSourcetable(tconfig.getSourcetable());
			tconfigdb.setKeyfield(tconfig.getKeyfield());
			tconfigdb.setCurid(tconfig.getCurid());
			tconfigdb.setTaskname(tconfig.getTaskname());
			tconfigdb.setEnableflag(tconfig.getEnableflag());
			tconfigdb.setRemark(tconfig.getRemark());
			configservice.update(tconfigdb);			
			return "redirect:"+referer;
		}
	}
	
	@RequestMapping({"/config/list"})
	public String list(HttpServletRequest request,PageInfo pageinfo,Model model,@ModelAttribute("tconfig") TConfig tconfig) {
		Map map=new HashMap();
		if(!StringUtils.isEmpty(tconfig.getTaskname())){
			pageinfo.setPageindex(1L);
			map.put("taskname", "%"+tconfig.getTaskname()+"%");
		}
		map.put("limit", pageinfo.getPagesize());
		map.put("offset", (pageinfo.getPageindex()-1)*pageinfo.getPagesize());
		List list=configservice.list(map);
		Long totalcount=configservice.count(map);
		StringBuffer pageparam=new StringBuffer();
		if(!StringUtils.isEmpty(tconfig.getTaskname())){
			pageparam.append("&taskname="+tconfig.getTaskname());
		}
		paginationutil.setPageindex(pageinfo.getPageindex());
		paginationutil.setPagesize(pageinfo.getPagesize());
		paginationutil.setShowsize(pageinfo.getShowsize());
		paginationutil.setPageurl("../config/list.do");
		paginationutil.setPageparam(pageparam.toString());
		paginationutil.setTotalcount(totalcount);		
		paginationutil.build();
		model.addAttribute("configlist",list);
		model.addAttribute("paginationutil",paginationutil);		
		model.addAttribute("tconfig",tconfig);
		return "/config/list";
	}
	
	@RequestMapping({"/config/delete"})
	public String delete(HttpServletRequest request,@RequestParam(value = "id", required = false) Long id) {
		String referer = request.getHeader("REFERER");
		configservice.delete(id);
		return "redirect:"+referer;
	}
	
	@RequestMapping({"/config/deletebatch"})
	public String deletebatch(HttpServletRequest request,@RequestParam(value = "ids", required = false) Long[] ids) {
		String referer = request.getHeader("REFERER");
		configservice.delete(ids);
		return "redirect:"+referer;
	}
	
}
