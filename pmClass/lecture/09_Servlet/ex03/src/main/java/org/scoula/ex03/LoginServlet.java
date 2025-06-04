package org.scoula.ex03;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    /*
     * GET
     * - 데이터가 URL 뒤에 쿼리스트링으로 붙어 전송됨
     *   /login?userid=park&password=1234
     * - 전송데이터가 주소창에 노출됨
     * - 크기 제한이 있음(보통 2kb ~ 8kb 제한)
     *
     * POST
     * - 데이터가 HTTP 요청의 body(본문)에 담겨 전송됨
     * - 전송데이터가 노출되지 않음
     * - 상대적으로 제한 X
     * */
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

        // 요청에서 파라미터 얻기
        String userid = req.getParameter("userid");
        String passwd = req.getParameter("passwd");

        // 응답 내보내기
        resp.setContentType("text/html; charset=UTF-8");
        PrintWriter out = resp.getWriter();
        out.print("<html><body>");
        out.print("아이디값: " + userid +"<br>");
        out.print("비밀번호값: " + passwd +"<br>");
        out.print("</body></html>");

    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        System.out.println("post 요청 시작 ");
        System.out.println("req = " + req.getParameter("userid"));

        req.setCharacterEncoding("UTF-8"); // 한글 깨짐 방지

        doGet(req, resp); // POST 요청도 GET 로직으로 처리
    }
}