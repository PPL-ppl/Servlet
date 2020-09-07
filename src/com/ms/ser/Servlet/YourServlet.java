package com.ms.ser.Servlet;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Map;

//注解方式进行映射
@WebServlet("/yourservlet")
public class YourServlet implements Servlet {
    public YourServlet() {
        System.out.println("创建servlet对象");
    }

    @Override
    public void init(ServletConfig servletConfig) throws ServletException {

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
        destroy();
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
