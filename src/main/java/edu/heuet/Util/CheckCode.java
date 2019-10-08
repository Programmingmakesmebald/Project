package edu.heuet.Util;


import org.junit.Test;

import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

//生成随机验证码

public class CheckCode {

    public Integer  CheckCode1() {
        int threadIntBound = ThreadLocalRandom.current().nextInt(100000, 999999);
       return  threadIntBound;
    }
}
