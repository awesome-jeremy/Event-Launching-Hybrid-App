package DAO;

import javabean.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by ray on 2017/5/29.
 */
public class UserDAO extends BaseDAO {
    Connection conn = null;

    public User login(long id, String password) {
        PreparedStatement pst = null;
        User user = null;
        try {
            conn = getConnection();
            pst = conn.prepareStatement("SELECT * from User WHERE id=? and password=?");
            pst.setLong(1, id);
            pst.setString(2, password);


            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                user = new User();
                user.setId(rs.getLong("id"));
                user.setName(rs.getString("name"));
                user.setPhoneNumber(rs.getString("phoneNumber"));
                user.setEmail(rs.getString("email"));
                user.setPortraitImage(rs.getString("portraitImage"));
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
        return user;
    }

    //注册
    public int register(User user) {
        int result = -1;
        PreparedStatement pst = null;
        try {
            conn = getConnection();
            pst = conn.prepareStatement("insert into USER(name,password,phoneNumber,email,portraitImage) VALUES (?,?,?,?,?)");
            pst.setString(1, user.getName());
            pst.setString(2, user.getPassword());
            pst.setString(3, user.getPhoneNumber());
            pst.setString(4, user.getEmail());
            pst.setString(5, user.getPortraitImage());
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
    //注册完立刻获得用户ID
    public long getRegisterID(){
        PreparedStatement pst=null;
        long id=-1;
        try {
            conn=getConnection();
            pst=conn.prepareStatement("SELECT MAX(id) as newUserID from User");
            ResultSet rs=pst.executeQuery();
            if(rs.next()){
                id=rs.getLong("newUserID");
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
        return id;
    }
}
