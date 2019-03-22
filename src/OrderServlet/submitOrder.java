package OrderServlet;

import DAO.OrderDAO;
import com.sun.tools.corba.se.idl.constExpr.Or;
import javabean.Order;
import javabean.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Created by ray on 2017/6/7.
 */
@WebServlet("/submitOrder.do")
public class submitOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Order submitOrder=(Order)req.getSession().getAttribute("createOrder");
        OrderDAO orderDAO=new OrderDAO();
        int result=orderDAO.insertOrder(submitOrder);
        if(result>=1){
            User user= (User) req.getSession().getAttribute("user");
            ArrayList<Order> myOrders=orderDAO.getMyOrders(user.getId());
            req.getSession().setAttribute("myOrders",myOrders);
            resp.sendRedirect("MyOrders.jsp");
        }else{

        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
