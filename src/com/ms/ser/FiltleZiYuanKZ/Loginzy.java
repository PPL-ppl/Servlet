package com.ms.ser.FiltleZiYuanKZ;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/loginzy")
public class Loginzy extends HttpServlet {//loginzy.jsp download.jsp
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        if (username.equals("admin") & password.equals("123456")) {
            HttpSession session = req.getSession();
            session.setAttribute("name", username);
            resp.sendRedirect("download.jsp");
        }else {
            resp.sendRedirect("loginzy.jsp");
        }
    }
}
