package com.xkit.easybuy.interceptor;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import sun.security.pkcs11.wrapper.Constants;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.logging.Logger;

public class MyInterceptor extends HandlerInterceptorAdapter {

    private Logger logger=Logger.getLogger(String.valueOf((MyInterceptor.class)));
    //后台控制器方法执行之前
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        Object obj=request.getSession().getAttribute("name");
        if(obj==null){
            request.setAttribute("msg","不是正常登陆！");
            request.getRequestDispatcher("/login.jsp").forward(request,response);
            return false;
        }else{
            return true;
        }
    }

    //后台控制器方法执行之后  视图解析器之前
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    //该方法会在整个请求完成，即视图渲染结束之后执行
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {

    }

}

