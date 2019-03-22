package activityServlet;

import DAO.ActivityDAO;
import javabean.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by ray on 2017/6/2.
 */
@WebServlet("/addToMyFavorite.do")
public class addToMyFavorite extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id=req.getParameter("activity_id");
        User user= (User) req.getSession().getAttribute("user");
        if(user==null){
            resp.sendRedirect("Login.jsp");
        }else{
            Long user_id=user.getId();
            Long activity_id=Long.parseLong(id);
            ActivityDAO activityDAO=new ActivityDAO();
            int result=activityDAO.addActivityToMyFavorite(user_id,activity_id);
            PrintWriter out=resp.getWriter();
            if(result==0){
                out.print("已经在你的收藏夹中啦!");
            }else if(result<0){
                out.print("Fail!");
            }else{
                req.getSession().setAttribute("allMyFavoriteActivities",activityDAO.getAllMyFavoriteActivities(user.getId()));
                out.print("成功添加至你的收藏夹!");
            }
            out.close();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
