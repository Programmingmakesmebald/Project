package edu.heuet.Controller;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import edu.heuet.Pojo.BookInfo;
import edu.heuet.Pojo.OrderInfo;

import edu.heuet.Pojo.OrderPay;
import edu.heuet.Service.OrderService;
import edu.heuet.Util.TimeUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;


@Controller("orderController")
@RequestMapping("/order")
public class OrderController {
    @Autowired
    private OrderService orderService;

    @RequestMapping("/createOrder")        /*** 测试创建订单**/
    public String CreateOrder(BookInfo bookInfo, HttpSession session, Model model)throws Exception{
        OrderInfo orderInfo=new OrderInfo();
        orderInfo.setSeller(bookInfo.getSeller());
        orderInfo.setPrice(bookInfo.getPrice());
        orderInfo.setBookId(bookInfo.getBookId());
        orderInfo.setOrderTime(TimeUtil.changeTimeToC(TimeUtil.getNowTimeC()));
        orderInfo.setOrderId(TimeUtil.getOrderId());
        orderInfo.setOrderState(1);
        orderInfo.setBuyer(Integer.parseInt(session.getAttribute("UserId").toString()));
        System.out.println(orderInfo);
        if(orderService.insertOrder(orderInfo)) {
            Long s=Long.parseLong(orderInfo.getOrderTime());
            orderInfo.setOrderTime(TimeUtil.changeCToTime(s));
            model.addAttribute("OrderInfo", orderInfo);
            model.addAttribute("BookInfo",bookInfo);
            return "Order/IsPay";
        }
        else
            return "jsp/login";
    }



    public OrderPay createorder(HttpSession session)throws Exception{   /** 获取购物车信息中的信息然后创建订单表返回给creatPay*/

        List<BookInfo> bookInfos;
        if(CartController.ShoppingOrder!=null){
            bookInfos=CartController.ShoppingOrder;
        }else {
            bookInfos=BookController.ShoppingOrder;
        }
        List<OrderInfo> orderInfos=new ArrayList<>();
        long orderId=TimeUtil.getOrderId();
        double price=0;
        String ordertime=TimeUtil.changeTimeToC(TimeUtil.getNowTimeC());
        Integer userid= Integer.parseInt(session.getAttribute("UserId").toString());
        for (BookInfo b :bookInfos) {
            price+=b.getPrice();
            OrderInfo orderInfo=new OrderInfo();
            orderInfo.setBookId(b.getBookId());
            orderInfo.setSeller(b.getSeller());
            orderInfo.setPrice(b.getPrice());
            orderInfo.setBuyer(userid);
            orderInfo.setOrderTime(ordertime);
            orderInfo.setOrderState(1);
            orderInfo.setOrderId(orderId);
            orderInfos.add(orderInfo);
        }
        boolean flag=orderService.insertOrders(orderInfos);
        OrderPay orderPay=new OrderPay();
        orderPay.setOrderId(orderId);
        orderPay.setPrice(price);
        orderPay.setBookName(bookInfos.get(0).getBookName()+"···");
        orderPay.setBookText(bookInfos.get(0).getBookText()+"·······");
        return orderPay;
    }


    @RequestMapping("/createPay")/** 创建支付**/
    public void CreatePay(HttpServletResponse response,HttpSession session, HttpServletRequest request)
            throws Exception{
        AlipayClient alipayClient = new DefaultAlipayClient(
                "https://openapi.alipaydev.com/gateway.do","2016101400681508",
                "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCc/m0qKfpVzrHcCc8PPeNHgwDbr4RyRtFvpHEywxrGxXpUJxD8g0QzrkjLZwEGSn7BKnMnSt/xpyqu1OrAqNYp6NWCHdw8FY2k0fZ/FR61KsX7fXNfpwGen63kgFZtgG37CvG9cgSqebjmKaMuyt+HUEy4nHTIYHWUEmPO01Q7nt73xka78LLp+gov9qycgAaT/ofjLsxp1bOIOM9LbFomvax1537WTWhz9zTyUI5OK0Oxtn2fxHBm8hSKAmQC7siUd2hEdFatHS9IPDd75LpbP1ppK16xthPTxDBNfaXE8cZm+9kaVEiZskDSdkMrSl9M6gB0Gub3r9BG3NcdXJTfAgMBAAECggEBAJlENnTcaH3O/YqwtMnPhIxzE6plbutVwe+5XZ3OJdz6O9PeE9JBoJrHwl95HuHyZk7Uz3kDux+jMKNgUBJogjSGD7MozbKG5DKNnJUynDkIGiLMtY8jbwxaHZ0fwcDDiht08s4devqnPODOs3XiL1leBpiQfd6FdSRq06++VtSgWCy7GAy65PLqUsU9Zl5mXna8iJqH71+5qKdqyz57OqZDcbDvFQj+4zBbBoWQSi8p2+00QSGm0EfScJVn1sgQQW078n/BH9xrHujxIGhiIvs7yNAaS1vZAN660NhJM2P4FS5+LuLrncDs9i1XKwxcLbvLvutuot3UVu9a46jYIOECgYEA6hb1PXEuGYbszlk+YroxhCIbGarKag4KQ25aWdHuXBFQRo40E+nBI0MR69NbuICdvTAzKtJmu+HuLDV2F9xFiTQq0ItuljGtnK1xw+pFNKG0c7e0oNDlDXnnAlj205U0dSrTQwTk6dPq5ZqPDr64yrIKV4ALtiAG9XFo9lluWS8CgYEAq7ArRZ9lwsm4mQ5hNVSpY5pxx4ndvJMggXEgBhGC6t427hmZvwVKpWP9beXBk7OVv1vI+YtJYR/RfrUghEey43JpO/b2XWcP1b6MnqO7/UZYZuda+87Zh0lP9I3BhhVNQWVfka6YMQ6Mqp7oiR5/IGsoV7qBCAlUWswI2J2yM1ECgYEAxlIq9SIFH2VbDLs5CmWae8p1UTqMAGvisBw2+a/MlD2q2Auz/Ubl9Rzmevf21gpJGTZTsyzMEtMneFbWtQJN+x6yQzpNt3thDcM4BfZdKWjyO7NgmXpBBDjJyQhcHQdkiPt+PmJQGfYLJPjbyG82mata7aSyx1q86oZpmYRM48sCgYBd/MojihgmI1H4EAQtMtSsHy9sYc/OXOitk+VJDSsTMmT1wXQGO3pawjtJfz6SgfxXToLeAV9BWS7RY4ySfcGze72aQx8pkLL9exv1+IKAK5NXeg23zcwNoJextCyeH2k0hK9lzCOqr2FYQjfgYJ6Ne7wREptyb9ELB6lMFEAqkQKBgD7jsW8KoKyeaqC0s09iVTE4FquAdXZtk6IbH6fXuq2Zg+8rARswoM02iAgLhj/Z7UgHAgaGyJyb+igpUCJff/i3kAAwEEV/4S1JduYd2kMeFavPrAuzAt7KMFT0HIoe6kIVmGGZGpetUpkQwZfqGaKq0bNmTH6b7B0sSyLd5Iej"
                ,"json","utf-8",
                "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmh1XdLHDZsA6sLlZbgVI+subErD+MXRXFosrxCFgqtXhbEPAsJA4I//jjwbpnMLbo6tNe/6hpSKgZW75a+W6XCOeXxYuutF12wUg1RRrOeMN5Qj1qEwBWlSkiOB7XtIYQcwT7ZfnsMt6Xy69Ee37AlbDekDOpjKXJv0wBTvsAaRAEC9DTmyUTAgjwppIkGMmucSnSiHGTK4VTdoKOCBIGwfRuOprd8Ax8XqzVtXlYzqAbXyHW3Gl5kS7IWJUDbbaYCoSsUV4W1Bj4aoI8IAMkk8ZCq5XpMTp0UJDjWaFnxpR7rVT2FkMbAJ7alJZCdro8GEAjy9X1LxGyHsKFx3tGQIDAQAB",
                "RSA2" );
        //上面这个方法是不是很眼熟？就是刚才配置完公钥后生成的那段，你可以直接复制然后加上你的私钥就好
        OrderPay orderPay=createorder(session);
        String out_trade_no = URLDecoder.decode(orderPay.getOrderId().toString(),"UTF-8");//订单号
        String total_amount = URLDecoder.decode(orderPay.getPrice().toString(),"UTF-8");//总金额
        String subject = URLDecoder.decode(orderPay.getBookName(),"UTF-8");//商品名称
        String body = URLDecoder.decode(orderPay.getBookText(),"UTF-8");//商品描述
        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
        alipayRequest.setReturnUrl("http://localhost:8080/order/pay");//创建API对应的request
        String form="这是一本书";
        alipayRequest.setBizContent("{" +"\"out_trade_no\":\""+ out_trade_no +"\"," +" \"product_code\":\"FAST_INSTANT_TRADE_PAY\"," +" \"total_amount\":"+ total_amount +"," +	"\"subject\":\""+ subject +"\"," +" \"body\":\""+ body +"\"" +" }"+"}");        //填充业务参数

        try {form = alipayClient.pageExecute(alipayRequest).getBody(); //调用SDK生成表单
        } catch (AlipayApiException e) {			e.printStackTrace();		}
        response.setContentType("text/html;charset=utf-8");
        response.getWriter().println(form);//直接将完整的表单html输出到页面
        response.getWriter().close();
    }


    @RequestMapping("/pay")  /**支付完成后请求路径**/
    public String  test1(String out_trade_no, Double total_amount, Model model) {
        model.addAttribute("money", total_amount);
        model.addAttribute("no", out_trade_no);
        return "/index/index";
    }

    @RequestMapping("/selectOrder")//page当前页码;pageSize每页的记录数
    String  selectOrder(Map<String,Object> map, Model model,
                    @RequestParam(value = "page", defaultValue = "1") Integer page,
                    @RequestParam(value = "pageSize", defaultValue = "3") Integer pageSize,
                    @RequestParam(value = "Buyer", defaultValue = "0") Integer Buyer){
        List<OrderInfo> orders;
        //开始分页（分页参数是页码和每页记录数），在下一条查询语句中使用分页
        System.out.println(pageSize);
        PageHelper.startPage(page, pageSize);
        if (Buyer==0) {
            orders= orderService.selectOrders();
        } else {
            orders = orderService.selectOrderByBuyer(Buyer);
        }
        //对象列表传入页面
        System.out.println(orders);
        PageInfo<OrderInfo> pageInfo = new PageInfo<OrderInfo>(orders);

        map.put("pageInfo",pageInfo);
        model.addAttribute("Buyer",Buyer);
        return "/Order_admin/selectOrder";
    }

}
