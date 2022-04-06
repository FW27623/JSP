package admin.fw1028.top;

import javax.servlet.*;
import javax.servlet.http.*;

import java.io.IOException;


public class ComputerController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String num = request.getParameter("num");
        Double num1 = Double.parseDouble(num);
        Double num2 = num1 * num1;
        response.getWriter().println("输入的数字的平方是：" + num2);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
