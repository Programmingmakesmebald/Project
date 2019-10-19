package edu.heuet.Controller;


import edu.heuet.Pojo.BookInfo;
import edu.heuet.Pojo.PageInfo;
import edu.heuet.Service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.awt.print.Book;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Controller
@RequestMapping("/cart")
public class CartController
{
    @Autowired
    private CartService cartService;//注入业务逻辑层接口


    public static List<BookInfo> ShoppingOrder;
    //实现添加商品进购物车
    @RequestMapping("/addCart")
    @ResponseBody                /***     添加到购物车***/
    public boolean addCart(@RequestParam(value = "BookId") String BookId, HttpSession session){
        Integer UserId =Integer.parseInt(session.getAttribute("UserId").toString());
        Integer bookid=Integer.parseInt(BookId);
        boolean s= cartService.addCart(UserId,bookid);
        return s;
    }

    @RequestMapping("/showCartByPage")     /**        显示购物车信息***/
    public String showCartByPage(@RequestParam(value="currentPage",defaultValue="1",required=false)int currentPage,HttpSession session, Model model){
        //PageInfo<BookInfo> CartList=cartService.showCartByPage(UserId,currentPage);
       // model.addAttribute("CartList",CartList);
        Integer UserId =Integer.parseInt(session.getAttribute("UserId").toString());
        PageInfo cartList=cartService.showCartByPage(UserId,currentPage);
        System.out.println(cartList);
        List<BookInfo> bookInfos= new ArrayList<>();
        for (BookInfo bookinfo:(List<BookInfo>) cartList.getLists()) {
            System.out.println(bookinfo);
           String [] s =bookinfo.getPath().split(",");
           bookinfo.setPath(s[0]);
            System.out.println(bookinfo);
           bookInfos.add(bookinfo);
        }
        model.addAttribute("BookInfos",bookInfos);
        model.addAttribute("pagemsg",cartList );//回显分页数据
        return "shoppingcart/shoppingcart";
    }
    @RequestMapping("/CountPrice")
    @ResponseBody/**    计算购物车选中物品总价  ***/
    public double CountBookPrice(Integer[] BookId){
        double Price=0;
        List<BookInfo> bookInfos=new ArrayList<>();
        List<BookInfo> bookInfos1=new ArrayList<>();
        for ( Integer i:BookId) {
            BookInfo bookInfo= cartService.selectById(i);
            bookInfos.add(bookInfo);
            double p=bookInfo.getPrice();
            Price +=p;
        }
        for (BookInfo bookinfo:bookInfos) {
            String [] s =bookinfo.getPath().split(",");
            bookinfo.setPath(s[0]);
            bookInfos1.add(bookinfo);
        }
        ShoppingOrder=bookInfos1;
        return Price;
    }


    @RequestMapping("/CountShopping")
    @ResponseBody  /*** 计算购物车中商品的数量**/
    public Integer CountShopping(HttpSession session){
        if(session.getAttribute("UserId")!=null){
            Integer UserId =Integer.parseInt(session.getAttribute("UserId").toString());
            int i=cartService.counts(UserId);
            return i;
        }else {
            return 0;
        }

    }

    @RequestMapping("/CreateOrderByCart")   /**  通过购物车创建订单**/
    public String CreateOrderByCart(HttpSession session,Model model){
        model.addAttribute("BookInfos",ShoppingOrder);
        return "/orderinfo/order";
    }





    /** 删除购物车中的商品**/
    @RequestMapping("/deleteShopping")
    @ResponseBody
    public String DeleteShopByCart(Integer BookId,HttpSession session){
        Integer UserId=Integer.parseInt(session.getAttribute("UserId").toString());
        boolean i=cartService.deleteShopBycart(BookId,UserId);
        if(i){
            return "true";
        }else {
            return "false";
        }
    }

}
