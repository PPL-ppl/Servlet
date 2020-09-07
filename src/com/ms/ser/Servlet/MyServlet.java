package com.ms.ser.Servlet;

import javax.servlet.*;
import java.io.IOException;

public class MyServlet implements Servlet {

    @Override
    public void init(ServletConfig servletConfig) throws ServletException {
        //Servlet的
        System.out.println("初始化");
        servletConfig.getServletName(); //YourServlet全类名
        // 在xml中配置
        servletConfig.getInitParameter("username");
        //参数名
        servletConfig.getInitParameterNames();
        //servlet上下文 整个的管理者
        ServletContext servletContext = servletConfig.getServletContext();
        servletContext.getContextPath();//8080后面是个设置的后缀
        servletContext.getServerInfo();//Tomcat版本信息
    }

    @Override
    public ServletConfig getServletConfig() {
        return null;
    }

    @Override
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
        System.out.println("服务端收到了信息");
        servletResponse.setContentType("text/html; charset=utf-8");
        servletResponse.getWriter().write("你说啥呢");
    }

    @Override
    public String getServletInfo() {
        return null;
    }

    @Override
    public void destroy() {
        System.out.println("销毁");
    }
}
