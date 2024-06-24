package web;

import dao.impl.UserDaoImpl;
import po.User;
//import utils.UserThreadLocal;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.regex.Pattern;

@WebServlet("/loginCheck")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getSession().removeAttribute("Message");
        String account = request.getParameter("account");
        String password = request.getParameter("password");

        if (account == null || password == null || isValidInput(account) || isValidInput(password)) {
            request.setAttribute("Message", "InputError");
            request.getRequestDispatcher("/login/Login.jsp").forward(request, response);
            return;
        }

        try {
            UserDaoImpl userDao = new UserDaoImpl();
            boolean isMatch = userDao.hasMatchUser(account, password);
            if (isMatch) {
                // 从数据库中获取用户对象
                User user = userDao.getUserByAccount(account);
                // session
                request.getSession().setAttribute("currentUser", user);
                System.out.println(111);
                System.out.println("成功登录: " + user);
//                System.out.println(UserThreadLocal.getCurrentUser());
                System.out.println(111);
                // 登录成功
                request.getSession().setAttribute("Message", "LoginSuccess");
                response.sendRedirect(request.getContextPath() + "/home/Home.jsp");
            } else if (!userDao.findUserByAccount(account)) {
                // 用户不存在
                request.setAttribute("Message", "AccountError");
                request.getRequestDispatcher("/login/Login.jsp").forward(request, response);
            } else {
                // 密码错误
                request.setAttribute("Message", "PasswordError");
                request.getRequestDispatcher("/login/Login.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("Message", "Exception");
            request.getRequestDispatcher("/login/Login.jsp").forward(request, response);
        }
    }

    private boolean isValidInput(String input) {
        return !Pattern.matches("^[a-zA-Z0-9]{3,20}$", input);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        doPost(request, response);
    }
}