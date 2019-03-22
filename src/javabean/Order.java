package javabean;

import java.io.Serializable;

/**
 * Created by ray on 2017/6/7.
 */
public class Order implements Serializable{
    private long id;

    private long user_id;
    private String user_name;
    private String user_phoneNumber;

    private long activity_id;
    private String activity_name;
    private String info;
    private double cost;
    private String date;
    private String time;
    private String during_time;
    private String location;
    private int number;
    private String image;
    private String type;


    private long launcher_id;
    private String launcher_name;
    private String launcher_email;
    private String launcher_phoneNumber;

    private String addTime;//订单添加时间

    public String getUser_phoneNumber() {
        return user_phoneNumber;
    }

    public String getLauncher_phoneNumber() {
        return launcher_phoneNumber;
    }

    public void setLauncher_phoneNumber(String launcher_phoneNumber) {
        this.launcher_phoneNumber = launcher_phoneNumber;
    }

    public void setUser_phoneNumber(String user_phoneNumber) {
        this.user_phoneNumber = user_phoneNumber;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUser_id() {
        return user_id;
    }

    public void setUser_id(long user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public long getActivity_id() {
        return activity_id;
    }

    public void setActivity_id(long activity_id) {
        this.activity_id = activity_id;
    }

    public String getActivity_name() {
        return activity_name;
    }

    public void setActivity_name(String activity_name) {
        this.activity_name = activity_name;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getDuring_time() {
        return during_time;
    }

    public void setDuring_time(String during_time) {
        this.during_time = during_time;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public long getLauncher_id() {
        return launcher_id;
    }

    public void setLauncher_id(long launcher_id) {
        this.launcher_id = launcher_id;
    }

    public String getLauncher_name() {
        return launcher_name;
    }

    public void setLauncher_name(String launcher_name) {
        this.launcher_name = launcher_name;
    }

    public String getLauncher_email() {
        return launcher_email;
    }

    public void setLauncher_email(String launcher_email) {
        this.launcher_email = launcher_email;
    }

    public String getAddTime() {
        return addTime;
    }

    public void setAddTime(String addTime) {
        this.addTime = addTime;
    }
}
