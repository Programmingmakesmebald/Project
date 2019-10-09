package edu.heuet.Controller;

import edu.heuet.Pojo.UserInfo;
import edu.heuet.Service.UserService;
import edu.heuet.Util.CheckCode;
import edu.heuet.Util.JuheDemo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import javax.swing.*;

@Controller("userController")
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;//注入业务逻辑层接口
    private int codelogin=0;
    private  int coderegister=0;
     //注册  的controller方法
    @RequestMapping("/register")
    public String register(UserInfo userInfo,String CheckCode, Model model){
        int code=Integer.parseInt(CheckCode);
        if(code==coderegister){
            if(userService.registerInfo(userInfo)){
                return "index/login";
            }
            else {
                return "index/regist";
            }
        }else{
            return "index/regist";
        }

    }
 /***   手机号检验  */
    @RequestMapping("/CheckPNum")
    @ResponseBody
    public boolean CheckPNum(String PhoneNum){
        boolean s=userService.checkPNum(PhoneNum);
        return s;
    }







//     登录控制
    @RequestMapping("/login")
    public String login(UserInfo userInfo ,  @RequestParam("CheckCode")String  CheckCode,HttpSession session, Model model){
            // 将信息传给业务逻辑层
        System.out.println(userInfo);
        UserInfo u=userService.selectUserInfo(userInfo);
        System.out.println(u);
        if(!u.getUserId().isEmpty()){
            //跳转到首页
            if(userInfo.getLPassword()!=null){
                session.setAttribute("UserName", u.getUserName());
                session.setAttribute("UserId", u.getUserId());
                session.setAttribute("user",u);
                return "index/index";
            }else {
                Integer checkCode= Integer.parseInt(CheckCode);
                if(checkCode==codelogin) {
                    session.setAttribute("UserName", u.getUserName());
                    session.setAttribute("UserId", u.getUserId());
                    session.setAttribute("user",u);
                    return "index/index";
                }else {
                    System.out.println("22222222222222222");
                    return "jsp/register";
                }
            }


        }else {
            //跳转到注册页面
            System.out.println("111111111111");
            return "jsp/register";
        }

    }
    @RequestMapping("/check")
    public @ResponseBody  String check(@RequestParam("PhoneNum") String PhoneNum , @RequestParam("goal") int goal , Model model){
                if(goal==0){
                    codelogin = new CheckCode().CheckCode1();
                    System.out.println(codelogin);
                }else if(goal==1){
                    coderegister=new CheckCode().CheckCode1();
                    System.out.println(coderegister);
                }


//            String s= JuheDemo.mobileQuery(PhoneNum,code);

            return "true";//返回字符串true
    }


    @RequestMapping("/alterInfo")
    public String AlterInfo(UserInfo userInfo,Model model,HttpSession session){
        UserInfo userInfo1=(UserInfo) session.getAttribute("user");
        String userid=session.getAttribute("UserId").toString();
        String username=session.getAttribute("UserName").toString();
        userInfo.setUserId(userid);
        boolean s=userService.updateInfo(userInfo);
        if(s){
            session.setAttribute("UserName",username);
            userInfo1.setPhoneNum(userInfo.getPhoneNum());
            userInfo1.setSchool(userInfo.getSchool());
            userInfo1.setUserName(userInfo.getUserName());
            session.setAttribute("user",userInfo1);
        }else {
        }
        return "PersonCenter/infor";
    }
    @RequestMapping("/alterPwd")
    @ResponseBody
    public String AlterPwd(@RequestParam("LPassword") String LPassword,@RequestParam("NewLPassword")String NewLPassword ,HttpSession session){
        userService.updatePwd(LPassword,NewLPassword,session.getAttribute("UserId").toString());
        return "success";
    }


}