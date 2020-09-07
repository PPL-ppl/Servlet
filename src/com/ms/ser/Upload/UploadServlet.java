package com.ms.ser.Upload;

import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

@WebServlet("/upload")
public class UploadServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /*req.setCharacterEncoding("UTF-8");
        ServletInputStream inputStream = req.getInputStream();
        Reader reader = new InputStreamReader(inputStream);
        BufferedReader bufferedReader = new BufferedReader(reader);
        String path = req.getServletContext().getRealPath("file/copy.txt");
        OutputStream outputStream = new FileOutputStream(path);
        Writer writer = new OutputStreamWriter(outputStream);
        BufferedWriter bufferedWriter = new BufferedWriter(writer);
        String str = "";
        while ((str = bufferedReader.readLine()) != null) {
            bufferedWriter.write(str);
        }
        bufferedWriter.close();
        writer.close();
        outputStream.close();
        bufferedReader.close();
        reader.close();
        inputStream.close();*/
    }
}
