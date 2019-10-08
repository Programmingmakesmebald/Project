package edu.heuet.Util;

import org.junit.Test;

import java.math.BigInteger;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

 public  class TimeUtil {


    public  static String changeTimeToC(String time)throws ParseException {
        final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        final Date datetime = sdf.parse(time);//将你的日期转换为时间戳
        final Long timeC = datetime.getTime();
        return timeC.toString();
    }

    public  static String changeCToTime(Long timeC){
        Date date=new Date(timeC);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//你要转换成的时间格式,大小写不要变
        final String time=sdf.format(date);
        return time;
    }

// 获取当前时间的yyyy-MM-dd HH:mm:ss格式
    public static String getNowTimeC(){
        final long nowTime = System.currentTimeMillis();//获取系统当前时间
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//你要转换成的时间格式,大小写不要变
        final String nowtime = sdf.format(nowTime);
        return nowtime;
    }
    public static long getOrderId(){
        final long nowTime =System.currentTimeMillis();
        Integer s=new CheckCode().CheckCode1();
        String a=s+nowTime+"1";
        return Long.parseLong(a);
    }
}
