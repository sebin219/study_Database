package org.scoula.forwardredirect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name="jstl2", value="/jstl2")
public class ForEachServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> members = new ArrayList<>();
        members.add("홍길동");
        members.add("김철수");
        members.add("이영희");
        req.setAttribute("memberList", members);

        req.getRequestDispatcher("jstl/forEach.jsp").forward(req, resp);
    }
}
