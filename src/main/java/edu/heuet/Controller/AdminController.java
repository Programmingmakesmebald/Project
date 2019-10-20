package edu.heuet.Controller;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import edu.heuet.Pojo.Admin;
import edu.heuet.Pojo.BookInfo;
import edu.heuet.Pojo.OrderInfo;
import edu.heuet.Pojo.UserInfo;
import edu.heuet.Service.AdminService;
import edu.heuet.Util.CookieUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    UserInfo userInfo;

    @Autowired
    Admin admin;
    @Autowired
    AdminService adminService;
    //注册
    @RequestMapping("regist")
    String addAdmin(){/** 注册**/
        return "";
    }
    //登录
    @RequestMapping("login")
    String selectAdmin(@RequestParam("AdminNum")String  AdminNum, @RequestParam("APassword")String  APassword, Model model,
                       HttpSession session, HttpServletRequest request, HttpServletResponse response){/** 登录查询**/
        String isRemember=(String) request.getParameter("isRemember");
        Boolean Remember=isRemember==null?false:true;
        System.out.println("Remember:"+Remember+"isRemember:"+isRemember);
        System.out.println(AdminNum);
        System.out.println(APassword);
        admin=adminService.checkPNum(AdminNum);
        System.out.println(admin);
        System.out.println("登录完成");
        if (!AdminNum.isEmpty()&&!APassword.isEmpty()&&AdminNum!=""&&APassword!="") {//不为空
            if (admin==null) {
                model.addAttribute("message","手机号错误!");
                return "/html/login";
            }else if (admin.getAPassword().equals(APassword)){
                if (Remember==true) {//Cookie
                    System.out.println("添加");
                    CookieUtils.setCookie(request,response,"AdminInfo",String.format("%s:%s",admin.getAdminNum(),admin.getAPassword()),7*24*60*60);
                }else {
                    System.out.println("删除");
                    CookieUtils.deleteCookie(request,response,"AdminInfo");
                }
                //Session
                session.setAttribute("AdminName",admin.getAdminName());
                session.setAttribute("AdminNum",admin.getAdminNum());
                session.setAttribute("AdminId",admin.getAdminId());
                session.setAttribute("APassword",admin.getAPassword());
                return "/admin";
            }else {
                model.addAttribute("message","密码错误!");
                return "/html/login";
            }
        }else {//为空
            model.addAttribute("message","手机号或密码为空!");
            return "/html/login";
        }
    }
    @RequestMapping("loginCookie")
    String loginCookie(HttpServletRequest request,Model model){
        String AdminInfo= CookieUtils.getCookieValue(request,"AdminInfo");
        String AdminNum;
        String APassword;
        if (AdminInfo!=null && !AdminInfo.equals("") && AdminInfo.length()!=0){
            System.out.println("获取cookie发送至登录页面");
            String[] userInfoArray = AdminInfo.split(":");
            AdminNum = userInfoArray[0];
            APassword = userInfoArray[1];
            boolean Remember=true;
            //这里的手机号和密码在传送过程（request域和session）的name要与登录成功设置的session区分开；
            model.addAttribute("sjh",AdminNum);
            model.addAttribute("miMa",APassword);
            model.addAttribute("Remember",Remember);
        }
        return "/html/login";
    }
    //修改
    @RequestMapping("update")
    String updateInfo(){/** 修改个人信息*/
        return "";
    }
    //查询订单
    @RequestMapping("/selectOrders")//page当前页码;pageSize每页的记录数
    String  selectOrders(Model model,
                        @RequestParam(value = "page", defaultValue = "1") Integer page,
                        @RequestParam(value = "pageSize", defaultValue = "10") Integer pageSize,
                        @RequestParam(value = "PhoneNum", defaultValue = "") String PhoneNum){
        List<OrderInfo> orders;
        //开始分页（分页参数是页码和每页记录数），在下一条查询语句中使用分页
        PageHelper.startPage(page, pageSize);
        if (PhoneNum.equals("")) {
            orders= adminService.selectOrder();
        } else {
            orders = adminService.selectOrderByPhoneNum(PhoneNum);
        }
        //对象列表传入页面
        PageInfo<OrderInfo> pageInfo = new PageInfo<OrderInfo>(orders);

        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("PhoneNum",PhoneNum);
        return "/html/selectOrders";
    }
    //查询用户
    @RequestMapping("/selectUsers")//page当前页码;pageSize每页的记录数
    String  selectUsers( Model model, @RequestParam(value = "page", defaultValue = "1" )Integer page,
                        @RequestParam(value = "PhoneNum",defaultValue = "") String PhoneNum ){
        List<UserInfo> userInfos;
        //开始分页（分页参数是页码和每页记录数），在下一条查询语句中使用分页
        PageHelper.startPage(page, 10);
        if (PhoneNum.equals("")) {
            userInfos= adminService.selectUser();
        } else {
            userInfos = adminService.selectUserByPhoneNum(PhoneNum);
        }
        //对象列表传入页面
        PageInfo<UserInfo> pageInfo = new PageInfo<UserInfo>(userInfos);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("PhoneNum",PhoneNum);
        return "/html/selectUsers";
    }
    //查询用户根据ID
    @RequestMapping("/selectUsersByUserId")//page当前页码;pageSize每页的记录数
    String  selectUsersByUserId( Model model, @RequestParam(value = "page", defaultValue = "1" )Integer page,
                        @RequestParam(value = "UserId",defaultValue ="") String UserId ){
        List<UserInfo> userInfos;
        //开始分页（分页参数是页码和每页记录数），在下一条查询语句中使用分页
        PageHelper.startPage(page, 10);
        if (UserId.equals("")) {
            userInfos= adminService.selectUser();
        } else {
            userInfos = adminService.selectUsersByUserId(Integer.parseInt(UserId));
        }
        //对象列表传入页面
        PageInfo<UserInfo> pageInfo = new PageInfo<UserInfo>(userInfos);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("UserId",UserId);
        return "/html/selectUsers";
    }
    //处罚用户
    @RequestMapping("/punishUser")
    String punishUser(@RequestParam(value = "punishNum") String punishNum,@RequestParam(value = "Credit") int Credit){
//        System.out.println("处罚:"+punishNum+"   "+Credit);
        Credit=Credit-5;
//        System.out.println(Credit);
        userInfo.setPhoneNum(punishNum);
        userInfo.setCredit(Credit);
        adminService.punishUser(userInfo);
        return "/admin/selectUsers";
    }
    //把用户添加黑名单
    @RequestMapping("/Blacklist")
    String Blacklist(@RequestParam(value = "punishNum") String punishNum,@RequestParam(value = "Credit") int Credit){
//        System.out.println("黑名单:"+punishNum+"   "+Credit);
        Credit=50;
//        System.out.println(Credit);
        userInfo.setPhoneNum(punishNum);
        userInfo.setCredit(Credit);
        adminService.punishUser(userInfo);
        return "forward:/admin/selectUsers";
    }
    //移除用户
    @RequestMapping("/Delete")
    String Delete(@RequestParam(value = "punishNum") String punishNum){

        return "/admin/selectUsers";
    }

    //查询图书分页查询
    @RequestMapping("/selectBooks")//page当前页码;pageSize每页的记录数
    String  selectBooks(Model model,
                         @RequestParam(value = "page", defaultValue = "1") Integer page,
                         @RequestParam(value = "pageSize", defaultValue = "10") Integer pageSize,
                         @RequestParam(value = "PhoneNum", defaultValue = "") String PhoneNum,
                         @RequestParam(value = "selectValue", defaultValue = "") String selectValue){
        List<BookInfo> bookInfos;
        //开始分页（分页参数是页码和每页记录数），在下一条查询语句中使用分页
        PageHelper.startPage(page, pageSize);
        if(selectValue.equals("")){
            if (PhoneNum.equals("")) {
                bookInfos= adminService.selectBook();
            } else {
                bookInfos = adminService.selectBookByPhoneNum(PhoneNum);
            }
        }else {
            if (PhoneNum.equals("")) {
                bookInfos= adminService.selectBookByTypeId(Integer.parseInt(selectValue));
            } else {
                bookInfos = adminService.selectBookByPAT(PhoneNum,Integer.parseInt(selectValue));
            }
        }
        //对象列表传入页面
        PageInfo<BookInfo> pageInfo = new PageInfo<BookInfo>(bookInfos);
        List<BookInfo>  booklist=pageInfo.getList();
        for( BookInfo b:booklist){
            List<String> paths2=new ArrayList<>();
            String  s=b.getPath();
            String[] paths1=s.split(",");
            for(String i :paths1){
                paths2.add(i);
            }
            b.setImagePath(paths2);
        }
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("PhoneNum",PhoneNum);
        return "/html/selectBooks";
    }
    //单个图书信息
    @RequestMapping("/one-book/{i}")
    String selectOnePicture(@PathVariable("i") int BookId, Model model){
        BookInfo bookInfo=adminService.selectBookByBookId(BookId);
        model.addAttribute("bookInfo",bookInfo);
        return "/html/one-Book";
    }
    //删除图书
    @RequestMapping("/deleteBook")
    String deleteBook(@RequestParam("BookId") Integer BookId){
        adminService.deleteBook(BookId);
        return "redirect:/admin/selectBooks";
    }
}
