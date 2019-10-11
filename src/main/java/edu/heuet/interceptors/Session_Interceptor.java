package edu.heuet.interceptors;
import edu.heuet.Pojo.UserInfo;
import org.apache.log4j.Logger;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Session_Interceptor implements HandlerInterceptor {
    private static  final Logger LOGGER=Logger.getLogger(Session_Interceptor.class);
    //打印拦截器信息


    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        Object user =request.getSession().getAttribute("user");
        if(user==null){
            request.getSession().setAttribute("flag",1);
            LOGGER.debug("对不起您没有访问权限！");
            response.sendRedirect("/index/login.jsp");
            return false;
        }
        if(user instanceof UserInfo){
            UserInfo u=(UserInfo)user;
            u.setLPassword(null);
            request.getSession().setAttribute("user",u);
            LOGGER.info(u.getUserName()+"正在登陆状态，可以操作");
            System.out.println("您可以登录！");

            return true;
        }else{
            LOGGER.warn("请重新登陆！");
            System.out.println("请重新登录！");
            return false;
        }



    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
