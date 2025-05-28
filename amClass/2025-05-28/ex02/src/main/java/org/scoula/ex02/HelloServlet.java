package org.scoula.ex02;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "helloServlet", value = {"/xxx", "/yyy"})
public class HelloServlet extends HttpServlet {

    private String message;

    @Override
    public void init() {
        message = "Hello World!";
        System.out.println("init() 메서드 호출 확인!");
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");
    }

    @Override
    public void destroy() {
        System.out.println("destroy() 메서드 호출 확인!");
    }
}