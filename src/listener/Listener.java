package listener;

import DAO.ActivityDAO;
import utilities.timeArray;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Created by ray on 2017/5/29.
 */
@WebListener()
public class Listener implements ServletContextListener,HttpSessionListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
//        String[] during_timeArray= timeArray.getDuring_TimeArray();
//        sce.getServletContext().setAttribute("during_timeArray",during_timeArray);
//        sce.getServletContext().setAttribute("buildings",timeArray.buildings);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

    }

    @Override
    public void sessionCreated(HttpSessionEvent se) {
        ActivityDAO activityDAO=new ActivityDAO();
        se.getSession().setAttribute("allActivities",activityDAO.getAllActivities());
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {

    }
}
