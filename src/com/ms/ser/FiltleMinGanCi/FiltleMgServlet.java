package com.ms.ser.FiltleMinGanCi;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/mg")
public class FiltleMgServlet extends HttpServlet { //mgAdd.jsp
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name =(String)req.getAttribute("name");
        System.out.println(name);
    }
}
