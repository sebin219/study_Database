package org.scoula.ex02;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "responseServlet", value = "/response")
public class ResponseServlet extends HttpServlet {
    private String message;

    @Override
    public void init() {
        message = "ResponseServlet 요청 성공";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html;charset=UTF-8");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<p>" + message + "</p>");
        out.println("</body></html>");
    }
}
