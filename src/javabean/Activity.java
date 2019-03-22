package javabean;

import java.io.Serializable;

/**
 * Created by ray on 2017/5/29.
 */
public class Activity implements Serializable{
    private long id;
    private String name;
    private long launcher_id;
    private String launch_time;
    private String info;
    private double cost;
    private String date;
    private String time;
    private String during_time;
    private String location;
    private int number;
    private String image;
    private String type;
    private int numberUpperLimit;

    private String addTime;

    private String launcher_name;
    private String portraitImage;

    public Activity() {
    }

    public Activity(String name, long launcher_id, String launch_time, String info, double cost, String date, String time, String during_time, String location, String image, String type, int numberUpperLimit) {

        this.name = name;
        this.launcher_id = launcher_id;
        this.launch_time = launch_time;
        this.info = info;
        this.cost = cost;
        this.date = date;
        this.time = time;
        this.during_time = during_time;
        this.location = location;
        this.image = image;
        this.type = type;
        this.numberUpperLimit = numberUpperLimit;
    }

    public String getLauncher_name() {
        return launcher_name;
    }

    public void setLauncher_name(String launcher_name) {
        this.launcher_name = launcher_name;
    }

    public String getPortraitImage() {
        return portraitImage;
    }

    public void setPortraitImage(String portraitImage) {
        this.portraitImage = portraitImage;
    }

    public String getAddTime() {
        return addTime;
    }

    public void setAddTime(String addTime) {
        this.addTime = addTime;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getNumberUpperLimit() {
        return numberUpperLimit;
    }

    public void setNumberUpperLimit(int numberUpperLimit) {
        this.numberUpperLimit = numberUpperLimit;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getLauncher_id() {
        return launcher_id;
    }

    public void setLauncher_id(long launcher_id) {
        this.launcher_id = launcher_id;
    }

    public String getLaunch_time() {
        return launch_time;
    }

    public void setLaunch_time(String launch_time) {
        this.launch_time = launch_time;
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
}
