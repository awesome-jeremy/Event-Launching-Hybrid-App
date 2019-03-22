package DAO;

import javabean.Order;
import utilities.getCurrentDateAndTime;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Created by ray on 2017/6/7.
 */
public class OrderDAO extends BaseDAO {
    Connection conn = null;
    PreparedStatement pst = null;

    public Order createAnOrder(long activity_id, long user_id) {
        Order order = null;
        try {
            conn = getConnection();
            pst = conn.prepareStatement("SELECT *,a.id as activity_id,a.name as activity_name,b.id as launcher_id," +
                    " b.name as launcher_name,c.id as user_id,c.name as user_name,c.phoneNumber as user_phoneNumber,b.phoneNumber as " +
                    "launcher_phoneNumber FROM Activity as a ,User as b ,User as c where a.id=? and a.launcher_id=b.id and c.id=?");
            pst.setLong(1, activity_id);
            pst.setLong(2, user_id);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                order = new Order();
                //活动信息
                order.setActivity_id(rs.getLong("activity_id"));
                order.setActivity_name(rs.getString("activity_name"));
                order.setCost(rs.getDouble("cost"));
                order.setDate(rs.getString("date"));
                order.setDuring_time(rs.getString("during_time"));
                order.setImage(rs.getString("image"));
                order.setInfo(rs.getString("info"));
                order.setLocation(rs.getString("location"));
                order.setType(rs.getString("type"));
                order.setTime(rs.getString("time"));
                //参与者信息
                order.setUser_id(rs.getLong("user_id"));
                order.setUser_name(rs.getString("user_name"));
                order.setUser_phoneNumber(rs.getString("user_phoneNumber"));
                //发起人信息
                order.setLauncher_id(rs.getLong("launcher_id"));
                order.setLauncher_name(rs.getString("launcher_name"));
                order.setLauncher_phoneNumber(rs.getString("launcher_phoneNumber"));
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
        return order;

    }

    public int insertOrder(Order submitOrder) {
        int result = -1;
        try {
            conn = getConnection();
            pst = conn.prepareStatement("INSERT INTO Orders(user_id,activity_id,launcher_id,addTime) VALUES (?,?,?,?)");
            pst.setLong(1, submitOrder.getUser_id());
            pst.setLong(2, submitOrder.getActivity_id());
            pst.setLong(3, submitOrder.getLauncher_id());
            pst.setString(4, getCurrentDateAndTime.getCurrentDateAndTime());
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

    //获取我所有的订单
    public ArrayList<Order> getMyOrders(long user_id){
        ArrayList<Order> myOrders=null;
        try {
            conn = getConnection();
            pst = conn.prepareStatement("\n" +
                    "SELECT *,a.id as activity_id,a.name as activity_name,b.id as launcher_id, b.name as launcher_name,c.id as user_id,c.name as user_name,c.phoneNumber as user_phoneNumber,b.phoneNumber as " +
                    "launcher_phoneNumber,d.id as order_id FROM Activity as a ,User as b ,User as c," +
                    "Orders as d where  a.launcher_id=b.id and a.id=d.activity_id and c.id=d.user_id and c.id=? ORDER BY addTime DESC");
            pst.setLong(1, user_id);
            ResultSet rs = pst.executeQuery();
            if(rs!=null) myOrders=new ArrayList<>();
            while (rs.next()) {
                Order order = new Order();
                //活动信息
                order.setActivity_id(rs.getLong("activity_id"));
                order.setActivity_name(rs.getString("activity_name"));
                order.setCost(rs.getDouble("cost"));
                order.setDate(rs.getString("date"));
                order.setDuring_time(rs.getString("during_time"));
                order.setImage(rs.getString("image"));
                order.setInfo(rs.getString("info"));
                order.setLocation(rs.getString("location"));
                order.setType(rs.getString("type"));
                order.setTime(rs.getString("time"));
                //参与者信息
                order.setUser_id(rs.getLong("user_id"));
                order.setUser_name(rs.getString("user_name"));
                order.setUser_phoneNumber(rs.getString("user_phoneNumber"));
                //发起人信息
                order.setLauncher_id(rs.getLong("launcher_id"));
                order.setLauncher_name(rs.getString("launcher_name"));
                order.setLauncher_phoneNumber(rs.getString("launcher_phoneNumber"));

                //订单信息
                order.setId(rs.getLong("order_id"));
                order.setAddTime(rs.getString("addTime"));
                myOrders.add(order);
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
        return myOrders;
    }
}
