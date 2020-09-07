package com.ms.ser.Servlet;

import com.ms.ser.Entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/user")
public class UserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<User> list=new ArrayList<>();
        list.add(new User("张三",22));
        list.add(new User("张三",23));
        list.add(new User("张三",24));
        req.setAttribute("list",list);
        req.getRequestDispatcher("user.jsp").forward(req,resp);
    }
}
