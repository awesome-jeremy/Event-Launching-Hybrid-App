package utilities;

import java.util.ArrayList;

/**
 * Created by ray on 2017/6/1.
 */
public class timeArray {

    public static String[] buildings = {"第1教学大楼", "第2教学大楼", "第3教学大楼"};
    //获取活动时长
    public static String[] getDuring_TimeArray(){
        String[] during_TimeArray=new String[100];
        during_TimeArray[0]="5分钟";
        during_TimeArray[1]="10分钟";
        during_TimeArray[2]="15分钟";
        during_TimeArray[3]="20分钟";
        during_TimeArray[4]="30分钟";
        during_TimeArray[5]="40分钟";
        during_TimeArray[6]="50分钟";
        during_TimeArray[7]="1小时";
        during_TimeArray[8]="1.5小时";
        during_TimeArray[9]="2小时";
        during_TimeArray[10]="2.5小时";
        during_TimeArray[11]="3小时";


        for(int i=4;i<=23;i++){
            during_TimeArray[i+8]=i+"小时";
        }
        for(int i=1;i<=30;i++){
            during_TimeArray[i+31]=i+"天";
        }
        return during_TimeArray;
    }
}
