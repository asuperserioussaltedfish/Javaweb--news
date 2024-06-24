package web;

//import utils.UserThreadLocal;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        UserThreadLocal.remove();
        // 获取当前会话
        HttpSession session = request.getSession();


        session.removeAttribute("currentUser");
//        request.getSession().setAttribute("currentUser", user);
        response.sendRedirect(request.getContextPath() + "/home/Home.jsp");
    }
}