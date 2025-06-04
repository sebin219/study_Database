package org.scoula.forwardredirect;

import java.io.*;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "hello", value = "/hello")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }
    /*
     * MVC 구조
     * Model : 데이터를 처리하는 로직(자바 클래스로 비즈니스 처리 담당)
     * View : 화면을 담당(JSP)
     * Controller: 요청을 받아 처리하고 결과를 뷰에 전달(서블릿)
     **/

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String name = request.getParameter("name");

        // 비즈니스 로직

        //결과값 전달
//        request.setAttribute("username", name);

        // 어플리케이션
        ServletContext application = getServletContext();
        application.setAttribute("username", "어플리케이션");

        // session
        HttpSession session = request.getSession();
        session.setAttribute("username","세션");

        //

        /*
         * Forword
         * - 클라이언트가 요청한 정보를 서버 내 다른 자원(Servlet)로 전달하여 처리하게 함
         * - 요청객체 (request, response)가 유지됨
         * - url이 바뀌지 않음
         * ->서버 내부에서만 이동되며 클라이언트는 이동을 모름
         *
         * Redirect
         * - 서버가 클라이언트에게 다른 url로 다시 요청하라고 응답
         * - 요청객체 (request, response)가 초기화
         * - url이 변경됨
         * -> 외부 사이트나 다른 컨텍스트로도 이동 가능
         * */

        if(name != null && !name.isEmpty()){
            // name 값이 있을 때
            request.getRequestDispatcher("helloView.jsp").forward(request, response);

        }else {
            // name 값이 없을 떄
            response.sendRedirect("/");
        }
    }

    public void destroy() {
    }
}