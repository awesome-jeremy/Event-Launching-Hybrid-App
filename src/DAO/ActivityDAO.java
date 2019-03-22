package DAO;

import javabean.Activity;
import utilities.getCurrentDateAndTime;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Created by ray on 2017/5/29.
 */
public class ActivityDAO extends BaseDAO {
    Connection conn = null;

    //获取所有活动信息
    public ArrayList<Activity> getAllActivities() {
        ArrayList<Activity> activities = null;
        PreparedStatement pst = null;

        try {
            conn = getConnection();
            pst = conn.prepareStatement("SELECT *,a.name as activity_name,b.name as launcher_name FROM  Activity  as a ,User as b  where a.launcher_id=b.id ORDER BY launch_time DESC ");
            ResultSet rs = pst.executeQuery();
            if (rs != null) activities = new ArrayList<>();
            while (rs.next()) {
                Activity activity = new Activity();
                activity.setId(rs.getLong("id"));
                activity.setName(rs.getString("name"));
                activity.setLauncher_id(rs.getLong("launcher_id"));
                activity.setLaunch_time(rs.getString("launch_time"));
                activity.setInfo(rs.getString("info"));
                activity.setCost(rs.getDouble("cost"));
                activity.setDate(rs.getString("date"));
                activity.setTime(rs.getString("time"));
                activity.setDuring_time(rs.getString("during_time"));
                activity.setLocation(rs.getString("location"));
                activity.setNumber(rs.getInt("number"));
                activity.setImage(rs.getString("image"));
                activity.setType(rs.getString("type"));
                activity.setNumberUpperLimit(rs.getInt("numberUpperLimit"));
                activity.setLauncher_name(rs.getString("launcher_name"));
                activity.setPortraitImage(rs.getString("portraitImage"));
                activities.add(activity);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                pst.close();
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return activities;
    }
    //获取某"type"活动信息
    public ArrayList<Activity> getCertainTypeActivities(String type) {
        ArrayList<Activity> activities = null;
        PreparedStatement pst = null;

        try {
            conn = getConnection();
            pst = conn.prepareStatement("SELECT *,a.name as activity_name,b.name as launcher_name FROM  Activity  as a ,User as b  where a.type=? and a.launcher_id=b.id ORDER BY launch_time DESC ");
            pst.setString(1,type);
            ResultSet rs = pst.executeQuery();
            if (rs != null) activities = new ArrayList<>();
            while (rs.next()) {
                Activity activity = new Activity();
                activity.setId(rs.getLong("id"));
                activity.setName(rs.getString("name"));
                activity.setLauncher_id(rs.getLong("launcher_id"));
                activity.setLaunch_time(rs.getString("launch_time"));
                activity.setInfo(rs.getString("info"));
                activity.setCost(rs.getDouble("cost"));
                activity.setDate(rs.getString("date"));
                activity.setTime(rs.getString("time"));
                activity.setDuring_time(rs.getString("during_time"));
                activity.setLocation(rs.getString("location"));
                activity.setNumber(rs.getInt("number"));
                activity.setImage(rs.getString("image"));
                activity.setType(rs.getString("type"));
                activity.setNumberUpperLimit(rs.getInt("numberUpperLimit"));
                activity.setLauncher_name(rs.getString("launcher_name"));
                activity.setPortraitImage(rs.getString("portraitImage"));
                activities.add(activity);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                pst.close();
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return activities;
    }


    //获取所有我收藏的活动
    public ArrayList<Activity> getAllMyFavoriteActivities(long user_id) {
        ArrayList<Activity> activities = null;
        PreparedStatement pst = null;

        try {
            conn = getConnection();
            pst = conn.prepareStatement("select * from Activity as a,MyFavorite as b WHERE b.user_id=? and a.id=b.activity_id ORDER BY addTime DESC ");
            pst.setLong(1,user_id);
            ResultSet rs = pst.executeQuery();
            if (rs != null) activities = new ArrayList<>();
            while (rs.next()) {
                Activity activity = new Activity();
                activity.setId(rs.getLong("id"));
                activity.setName(rs.getString("name"));
                activity.setLauncher_id(rs.getLong("launcher_id"));
                activity.setLaunch_time(rs.getString("launch_time"));
                activity.setInfo(rs.getString("info"));
                activity.setCost(rs.getDouble("cost"));
                activity.setDate(rs.getString("date"));
                activity.setTime(rs.getString("time"));
                activity.setDuring_time(rs.getString("during_time"));
                activity.setLocation(rs.getString("location"));
                activity.setNumber(rs.getInt("number"));
                activity.setImage(rs.getString("image"));
                activity.setType(rs.getString("type"));
                activity.setNumberUpperLimit(rs.getInt("numberUpperLimit"));
                activity.setAddTime(rs.getString("addTime"));
                activities.add(activity);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                pst.close();
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return activities;
    }

    //新添加一个活动
    public int insert(Activity activity) {
        int result = -1;
        PreparedStatement pst = null;
        try {
            conn = getConnection();
            pst = conn.prepareStatement("INSERT INTO Activity(name,launcher_id,launch_time," +
                    "info,cost,date,time,during_time,location,image,type,numberUpperLimit) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)");
            pst.setString(1, activity.getName());
            pst.setLong(2, activity.getLauncher_id());
            pst.setString(3, activity.getLaunch_time());
            pst.setString(4, activity.getInfo());
            pst.setDouble(5, activity.getCost());
            pst.setString(6, activity.getDate());
            pst.setString(7, activity.getTime());
            pst.setString(8, activity.getDuring_time());
            pst.setString(9, activity.getLocation());
            pst.setString(10, activity.getImage());
            pst.setString(11, activity.getType());
            pst.setInt(12, activity.getNumberUpperLimit());
            result = pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                pst.close();
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return result;
    }

    //添加活动至我的收藏夹,返回0代表已经在收藏夹了
    public int addActivityToMyFavorite(Long user_id, Long activity_id) {
        int result = -1;
        PreparedStatement pst=null;
        if (isActivityInMyFavorite(user_id,activity_id)){
            return 0;
        }else{
            try {
                conn=getConnection();
                pst=conn.prepareStatement("INSERT INTO MyFavorite(user_id,activity_id,addTime) VALUES(?,?,?) ");
                String addTime= getCurrentDateAndTime.getCurrentDateAndTime();
                pst.setLong(1,user_id);
                pst.setLong(2,activity_id);
                pst.setString(3,addTime);
                result=pst.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                try {
                    pst.close();
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return result;
    }

    public boolean isActivityInMyFavorite(Long user_id, Long activity_id) {
        boolean result = false;
        PreparedStatement pst=null;
        try {
            conn = getConnection();
            pst=conn.prepareStatement("SELECT * FROM MyFavorite WHERE user_id=? and activity_id=?");
            pst.setLong(1,user_id);
            pst.setLong(2,activity_id);
            ResultSet rs=pst.executeQuery();
            if(rs.next()){
                result=true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                pst.close();
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
return result;
    }
}
