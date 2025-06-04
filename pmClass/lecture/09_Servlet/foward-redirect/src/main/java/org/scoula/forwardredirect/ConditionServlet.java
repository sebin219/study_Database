package org.scoula.forwardredirect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="jstl", value="/jstl")
public class ConditionServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("score", 65);

        // jstl/condition.jsp로 전달 (forward)
        req.getRequestDispatcher("jstl/condition.jsp").forward(req, resp);
    }
}
