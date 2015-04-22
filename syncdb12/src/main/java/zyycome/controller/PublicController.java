package zyycome.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import zyycome.db2.pojo.TData;
import zyycome.util.PageInfo;

@SuppressWarnings("all")
@Controller
@RequestMapping({"/freemarker"})
public class PublicController {
	
	@InitBinder
	protected void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) throws Exception {
	    DateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
	    fmt.setLenient(false);  
	    CustomDateEditor dateEditor = new CustomDateEditor(fmt, false);
	    binder.registerCustomEditor(Date.class, dateEditor);
	}
	
	@RequestMapping({"/public/error"})
	public String error(HttpServletRequest request,Model model,@RequestParam(value = "msg", required = false) String msg) {
		model.addAttribute("msg", msg);
		return "/public/error";
	}
}
