package utilities;

import java.util.ArrayList;

/**
 * Created by ray on 2017/6/1.
 */
public class timeArray {

    public static String[] buildings = {"��1��ѧ��¥", "��2��ѧ��¥", "��3��ѧ��¥"};
    //��ȡ�ʱ��
    public static String[] getDuring_TimeArray(){
        String[] during_TimeArray=new String[100];
        during_TimeArray[0]="5����";
        during_TimeArray[1]="10����";
        during_TimeArray[2]="15����";
        during_TimeArray[3]="20����";
        during_TimeArray[4]="30����";
        during_TimeArray[5]="40����";
        during_TimeArray[6]="50����";
        during_TimeArray[7]="1Сʱ";
        during_TimeArray[8]="1.5Сʱ";
        during_TimeArray[9]="2Сʱ";
        during_TimeArray[10]="2.5Сʱ";
        during_TimeArray[11]="3Сʱ";


        for(int i=4;i<=23;i++){
            during_TimeArray[i+8]=i+"Сʱ";
        }
        for(int i=1;i<=30;i++){
            during_TimeArray[i+31]=i+"��";
        }
        return during_TimeArray;
    }
}
