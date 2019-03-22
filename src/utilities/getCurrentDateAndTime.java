package utilities;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by ray on 2017/6/2.
 */
public class getCurrentDateAndTime {
    public static String getCurrentDate(){
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        String date=sdf.format(new Date());
        return date;
    }
    public static String getCurrentTime(){
        SimpleDateFormat sdf=new SimpleDateFormat("HH:mm:ss");
        String time=sdf.format(new Date());
        return time;
    }
    public static String getCurrentDateAndTime(){
        return getCurrentDate()+" "+getCurrentTime();
    }

}
