package servlet;

import DAO.ActivityDAO;
import DAO.OrderDAO;
import DAO.UserDAO;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;
import javabean.Activity;
import javabean.Order;
import javabean.User;
import utilities.TimeStampRandom_forFileName;
import utilities.getCurrentDateAndTime;
import utilities.utility;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspFactory;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

/**
 * Created by ray on 2017/6/2.
 */
@WebServlet("/register.do")
public class register extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        SmartUpload smart=new SmartUpload();
        JspFactory fac=JspFactory.getDefaultFactory();
        PageContext pageContext=fac.getPageContext(this, req,resp, null, false, JspWriter.DEFAULT_BUFFER, true);
        smart.initialize(pageContext);
        try {
            smart.upload();
        } catch (SmartUploadException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        String fileExt=smart.getFiles().getFile(0).getFileExt();
        String fileName= TimeStampRandom_forFileName.getFileName()+"."+fileExt;
        try {
            smart.getFiles().getFile(0).saveAs(utility.imageFileUrl+fileName);
        } catch (SmartUploadException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        String name=smart.getRequest().getParameter("name");
        String password=smart.getRequest().getParameter("password");
        String passwordConfirm=smart.getRequest().getParameter("passwordConfirm");
        String phoneNumber=smart.getRequest().getParameter("phoneNumber");
        String email=smart.getRequest().getParameter("email");
        String portraitImage="image/"+fileName;
        if(!password.equals(passwordConfirm)){resp.sendRedirect("error.jsp");}
        else {
            User newUser = new User(password, name, phoneNumber, email, portraitImage);
            UserDAO userDAO = new UserDAO();
            int result = -1;
            for(int i=0;i<1000;i++)
            result=userDAO.register(newUser);


            if (result >= 1) {
                long id=userDAO.getRegisterID();
                newUser.setId(id);
                req.getSession().setAttribute("user",newUser);
                ActivityDAO activityDAO=new ActivityDAO();
                OrderDAO orderDAO=new OrderDAO();
                req.getSession().setAttribute("allMyFavoriteActivities", activityDAO.getAllMyFavoriteActivities(id));

                ArrayList<Order> myOrders = orderDAO.getMyOrders(id);
                req.getSession().setAttribute("myOrders", myOrders);
                resp.sendRedirect("registerSucceed.jsp");
            } else {
                resp.sendRedirect("error.jsp");
            }
        }

    }
}
