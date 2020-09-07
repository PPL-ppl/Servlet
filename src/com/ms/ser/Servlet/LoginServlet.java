package com.ms.ser.Servlet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    /*
    @Override
    public void init(ServletConfig config) throws ServletException {

    }*/

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        if (username.equals("admin") & password.equals("123456")) {
            HttpSession session = req.getSession();
            session.setAttribute("name", username);
            req.getRequestDispatcher("welcome.jsp").forward(req, resp);
        } else {
            resp.sendRedirect("login.jsp");
        }
    }
}
