package zyycome.interceptor;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import zyycome.db2.pojo.TUser;

public class LoginInterceptor extends HandlerInterceptorAdapter
{
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception  {
	  List<String> excludelist=new ArrayList<String>();
	  excludelist.add("login/index.do");
	  excludelist.add("login/login.do");
	  excludelist.add("checkcode/make.do");	  
	  for(String exclue:excludelist){
		  if (request.getRequestURI().endsWith(exclue)) {
			  return true;
		  }
	  }

	  TUser tuser = (TUser)request.getSession().getAttribute("user");
	  if (tuser == null) {
		  response.sendRedirect("../login/index.do");
		  return false;
	  }
	  return true;
	}
}