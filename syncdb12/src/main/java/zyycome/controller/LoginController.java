package zyycome.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import zyycome.ajax.AjaxResult;
import zyycome.db2.pojo.TUser;
import zyycome.db2.service.UserService;

@SuppressWarnings("all")
@Controller
@RequestMapping({"/freemarker"})
public class LoginController
{

	@Autowired private UserService userservice;
	
	@InitBinder
	protected void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) throws Exception {
	    DateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
	    fmt.setLenient(false);  
	    CustomDateEditor dateEditor = new CustomDateEditor(fmt, false);
	    binder.registerCustomEditor(Date.class, dateEditor);
	}
	
	@RequestMapping({"/login/index"})
	public String index(Model model) {
		model.addAttribute("tuser", new TUser());
		model.addAttribute("r", RandomStringUtils.randomNumeric(10));		
		return "login/index";
	}
  
	@RequestMapping({"/login/login"})
	@ResponseBody
	public AjaxResult login(HttpServletRequest request, @ModelAttribute("tuser") TUser tuser,@RequestParam(value="checkcode", required=false) String checkcode,  Model model) {
		AjaxResult ajaxresult = new AjaxResult();
		long faillimit=5;
		long failcount=0;
		TUser sessionuser = (TUser) request.getSession().getAttribute("user");
		try {			
		    List list =null; 
		    String sessioncheckcode=(String) request.getSession().getAttribute("checkcode");
		    if(!checkcode.equals(sessioncheckcode)){
		    	throw new Exception("验证码输入不正确");
		    }		    
		    list=this.userservice.findByName(tuser);   
		    if (list.size() == 0) {
		    	throw new Exception("登录用户名不正确："+tuser.getName());
		    }
		    tuser.setPwd(DigestUtils.md5Hex(tuser.getPwd()));
		    list=this.userservice.findByNamePwd(tuser);     
		    if (list.size() == 0) {
		    	throw new Exception("登录密码不正确："+tuser.getName());
		    }
		    tuser=(TUser) list.get(0);		    
		    tuser.setLastloginip(request.getRemoteAddr());		   
		    tuser.setLastlogintime(new Date());
		    tuser.setLogincount(tuser.getLogincount()+1);
		    userservice.updatelogin(tuser);
		    ajaxresult.setSuccess(true);
		    ajaxresult.setUrl("../main/index.do");
		    ajaxresult.setMsg("登录成功");		    
		} 
		catch (Exception e) {
		    ajaxresult.setSuccess(false);
		    String msg="登录失败：" + e.getMessage();
		    ajaxresult.setMsg(msg);	 
		}
		tuser=userservice.load(tuser.getId());
		request.getSession().setAttribute("user", tuser);	
		return ajaxresult;  
  }
  
}