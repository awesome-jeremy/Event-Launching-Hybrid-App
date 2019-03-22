package servlet;

import DAO.ActivityDAO;
import DAO.OrderDAO;
import DAO.UserDAO;
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
 * Created by ray on 2017/5/29.
 */
@WebServlet("/login.do")
public class Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        String password = req.getParameter("password");
        UserDAO userDAO = new UserDAO();

        if (id == "" || password == "") {
            resp.sendRedirect("Login.jsp");
        } else {
            User user = userDAO.login(Long.parseLong(id), password);
            if (user != null) {
                ActivityDAO activityDAO = new ActivityDAO();
                OrderDAO orderDAO = new OrderDAO();
                req.getSession().setAttribute("user", user);
                req.getSession().setAttribute("allMyFavoriteActivities", activityDAO.getAllMyFavoriteActivities(user.getId()));

                ArrayList<Order> myOrders = orderDAO.getMyOrders(user.getId());
                req.getSession().setAttribute("myOrders", myOrders);
                resp.sendRedirect("Activity.jsp");

            } else {
                resp.sendRedirect("Login.jsp");
            }

        }
    }
}
