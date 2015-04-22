package zyycome.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import zyycome.db2.pojo.TUser;

@SuppressWarnings("all")


@Controller
@RequestMapping({"/freemarker"})
public class LogoutController
{
  
	@InitBinder
	protected void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) throws Exception {
	    DateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
	    fmt.setLenient(false);  
	    CustomDateEditor dateEditor = new CustomDateEditor(fmt, false);
	    binder.registerCustomEditor(Date.class, dateEditor);
	}
	
	@RequestMapping({"/logout/logout"})
	public String logout(HttpServletRequest request, Model model) {
		TUser sessionuser = (TUser) request.getSession().getAttribute("user");		
		request.getSession().removeAttribute("user");
		request.getSession().invalidate();
		return "redirect:../login/index.do";
	}
}