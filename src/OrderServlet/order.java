package OrderServlet;

import DAO.OrderDAO;
import javabean.Order;
import javabean.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by ray on 2017/6/7.
 */
@WebServlet("/order.do")
public class order extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String activity_id_Str = req.getParameter("activity_id");
        String user_id_Str = req.getParameter("user_id");
        User user= (User) req.getSession().getAttribute("user");
        if(user==null)resp.sendRedirect("Login.jsp");
        else{
            long activity_id=Long.parseLong(activity_id_Str);
            OrderDAO orderDAO=new OrderDAO();
            Order createOrder=orderDAO.createAnOrder(activity_id,user.getId());
            req.getSession().setAttribute("createOrder",createOrder);
            resp.sendRedirect("order.jsp");

        }
    }
}
