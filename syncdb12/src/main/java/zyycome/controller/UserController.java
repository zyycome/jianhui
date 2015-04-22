package zyycome.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.codec.digest.DigestUtils;
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

import zyycome.db2.pojo.TUser;
import zyycome.db2.service.UserService;
import zyycome.util.PageInfo;
import zyycome.utils.PaginationUtil;

@SuppressWarnings("all")
@Controller
@RequestMapping({"/freemarker"})
public class UserController {
	
	@Autowired private UserService userservice;
	@Autowired private PaginationUtil paginationutil;
	
	@InitBinder
	protected void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) throws Exception {
	    DateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
	    fmt.setLenient(false);  
	    CustomDateEditor dateEditor = new CustomDateEditor(fmt, false);
	    binder.registerCustomEditor(Date.class, dateEditor);
	}
	
	@RequestMapping({"/user/add"})
	public String add(HttpServletRequest request,@RequestParam(value = "id", required = false) Long id,Model model) {
		String referer = request.getHeader("REFERER");
		TUser tuser=new TUser();
		model.addAttribute("tuser", tuser);
		model.addAttribute("referer", referer);
		return "/user/add";
	}

	@RequestMapping({"/user/edit"})
	public String edit(HttpServletRequest request,@RequestParam(value = "id", required = false) Long id,Model model) {
		String referer = request.getHeader("REFERER");
		TUser tuser=userservice.load(id);
		model.addAttribute("tuser", tuser);
		model.addAttribute("referer", referer);
		return "/user/edit";
	}
	
	@RequestMapping({"/user/save"})
	public String save(HttpServletRequest request,@ModelAttribute("tuser") TUser tuser,@RequestParam(value = "referer", required = false) String referer) {		
		if(tuser.getId()==0L){
			tuser.setInserttime(new Date());
			tuser.setLogincount(0L);
			tuser.setPwd(DigestUtils.md5Hex(tuser.getPwd()));
			userservice.save(tuser);			
			return "redirect:../user/list.do";
		}
		else{
			tuser.setPwd(DigestUtils.md5Hex(tuser.getPwd()));
			TUser tuserdb=userservice.load(tuser.getId());			
			tuserdb.setName(tuser.getName());
			tuserdb.setPwd(tuser.getPwd());	
			userservice.update(tuserdb);			
			return "redirect:"+referer;
		}
	}
	
	@RequestMapping({"/user/list"})
	public String list(HttpServletRequest request,PageInfo pageinfo,Model model,@ModelAttribute("tuser") TUser tuser) {
		Map map=new HashMap();
		if(!StringUtils.isEmpty(tuser.getName())){
			pageinfo.setPageindex(1L);
			map.put("name", "%"+tuser.getName()+"%");
		}
		map.put("limit", pageinfo.getPagesize());
		map.put("offset", (pageinfo.getPageindex()-1)*pageinfo.getPagesize());
		List list=userservice.list(map);
		Long totalcount=userservice.count(map);
		StringBuffer pageparam=new StringBuffer();
		if(!StringUtils.isEmpty(tuser.getName())){
			pageparam.append("&name="+tuser.getName());
		}
		paginationutil.setPageindex(pageinfo.getPageindex());
		paginationutil.setPagesize(pageinfo.getPagesize());
		paginationutil.setShowsize(pageinfo.getShowsize());
		paginationutil.setPageurl("../user/list.do");
		paginationutil.setPageparam(pageparam.toString());
		paginationutil.setTotalcount(totalcount);		
		paginationutil.build();
		model.addAttribute("userlist",list);
		model.addAttribute("paginationutil",paginationutil);		
		model.addAttribute("tuser",tuser);
		return "/user/list";
	}
	
	@RequestMapping({"/user/delete"})
	public String delete(HttpServletRequest request,@RequestParam(value = "id", required = false) Long id) {
		String referer = request.getHeader("REFERER");
		userservice.delete(id);
		return "redirect:"+referer;
	}
	
	@RequestMapping({"/user/deletebatch"})
	public String deletebatch(HttpServletRequest request,@RequestParam(value = "ids", required = false) Long[] ids) {
		String referer = request.getHeader("REFERER");
		userservice.delete(ids);
		return "redirect:"+referer;
	}
	
}
