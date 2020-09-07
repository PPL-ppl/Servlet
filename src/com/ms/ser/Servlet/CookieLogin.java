package com.ms.ser.Servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/cookieLogin")
public class CookieLogin extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        if (username.equals("admin") & password.equals("123456")) {
            Cookie cookie=new Cookie("name",username);
            cookie.setMaxAge(20);
            resp.addCookie(cookie);
            resp.sendRedirect("cookie_Wel.jsp");
        } else {
            resp.sendRedirect("login1.jsp");
        }
    }
    }
