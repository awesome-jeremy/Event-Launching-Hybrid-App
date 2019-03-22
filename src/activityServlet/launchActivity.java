package activityServlet;

import DAO.ActivityDAO;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;
import javabean.Activity;
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

/**
 * Created by ray on 2017/6/2.
 */
@WebServlet("/launchActivity.do")
public class launchActivity extends HttpServlet{
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
        String type=smart.getRequest().getParameter("type");
        String date=smart.getRequest().getParameter("date");
        String time=smart.getRequest().getParameter("time");
        String during_time=smart.getRequest().getParameter("during_time");
        String location=smart.getRequest().getParameter("location");
        String numberUpperLimit=smart.getRequest().getParameter("numberUpperLimit");
        String cost=smart.getRequest().getParameter("cost");
        String info=smart.getRequest().getParameter("info");
        String image="image/"+fileName;

        User user= (User) req.getSession().getAttribute("user");
        Long launcher_id=user.getId();
        String launch_time= getCurrentDateAndTime.getCurrentDateAndTime();

        Activity activity=new Activity(name,launcher_id,launch_time,info,Double.parseDouble(cost),date,time,during_time,location,image,type,Integer.parseInt(numberUpperLimit));
        ActivityDAO activityDAO=new ActivityDAO();
        int result=-1;

            result = activityDAO.insert(activity);

        PrintWriter out=resp.getWriter();
        String url=req.getHeader("Referer");
        req.getSession().setAttribute("allActivities",activityDAO.getAllActivities());
        if(result>=1){
            resp.sendRedirect("Activity.jsp");
        }else{
            resp.sendRedirect(url);
        }

    }
}
