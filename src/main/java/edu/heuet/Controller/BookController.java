package edu.heuet.Controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import edu.heuet.Pojo.BookInfo;
import edu.heuet.Service.BookService;
import edu.heuet.Service.MassageService;
import edu.heuet.Util.TimeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.awt.print.Book;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/book")
public class BookController {
    @Autowired
    private BookInfo bookInfo;
    @Autowired
    private BookService bookService;//图书的业务逻辑接口
    @Autowired
    private MassageController massageController;
    @Autowired
    private MassageService massageService;
    public static List<BookInfo> ShoppingOrder;
    //卖书的控制方法
    @RequestMapping("/sell")
    public String sellBook(@RequestParam("Price") double Price,@RequestParam("BookName") String BookName,@RequestParam("BookText") String BookText,
                    @RequestParam("TypeId") String TypeId,@RequestParam("BookPicture") MultipartFile[] BookPicture,HttpServletRequest request,
                    Map<String,Object> map, HttpSession session ) throws IOException {
        //封装Book
        Integer userId=Integer.parseInt(session.getAttribute("UserId").toString());
        bookInfo.setSeller(userId);
        bookInfo.setTypeId(Integer.parseInt(TypeId));
        bookInfo.setPrice(Price);
        bookInfo.setBookName(BookName);
        bookInfo.setBookText(BookText);
        bookInfo.setBookState(1);
        bookInfo.setBookTime(TimeUtil.getNowTimeC());


        //图片处理
        List<String> imageList=new ArrayList<String>();
        String path="";
        String serverpath=request.getSession().getServletContext().getRealPath("/")+"image/";
        //如果目录不存在创建一个目录
        File uploadDir = new File(serverpath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }
        System.out.println(serverpath);
        for (MultipartFile file:BookPicture) {
            String fileName = file.getOriginalFilename();
            System.out.println(String.format("文件名字：%s",fileName));
            file.transferTo(new File(serverpath+fileName));
            String datebasepath_server="/image/"+fileName;
            path=path+datebasepath_server+",";
            imageList.add(datebasepath_server);
        }
        //封装BookPicture
        bookInfo.setImagePath(imageList);
        bookInfo.setPath(path);
        //BppkPicture插入数据库
        //Book插入数据库
        bookService.insertBookInfo(bookInfo);

        return "jsp/buy-sell/sell";
    }
    //全部图书信息显示
//    @RequestMapping("/info")
//    public String selectPicture(Map<String,Object> map, HttpSession session){
//        //访问数据库得到Book和BookPicture
//        List<BookInfo> bookInfos=bookService.selectBookInfo();
//        List<BookPicture> bookPictures=bookPictureService.selectBookPicture();
//        map.put("bookInfos",bookInfos);
//        map.put("bookPictures",bookPictures);
//        return "jsp/buy-sell/book";
//    }
    //单个图书信息
    @RequestMapping("one_info/{i}")
    public String selectOnePicture(@PathVariable("i") Integer i,Map<String,Object> map){
        List<BookInfo> bookInfos=bookService.selectBookInfo();
//        List<BookPicture> bookPictures=bookPictureService.selectBookPicture();
        map.put("bookInfos",bookInfos);
//        map.put("bookPictures",bookPictures);
        map.put("i",i);
        return "index/book";
    }



    /**
     *
     * 分页  查询
     * */

    @RequestMapping("/main")
    public String  main(@RequestParam(value="currentPage",defaultValue="1",required=false)int currentPage,@RequestParam(value="BookType",defaultValue="0",required=false)int BookType, Model model){
        PageInfo pageInfo =bookService.findByPage(currentPage,BookType);
//        List<BookInfo>  booklist=pageInfo.getLists();
//        for( BookInfo b:booklist){
//            String  s=b.getPath();
//            String[] paths1=s.split(",");
//            List<String> paths2=new ArrayList<>();
//            for(String i :paths1){
//                paths2.add(i);
//            }
//
//            b.setImagePath(paths2);
//        }
        model.addAttribute("pagemsg",pageInfo );//回显分页数据
        return "index/bookinfo";
    }

//    @RequestMapping("/mysell")
//    public String getSellerBook(@RequestParam(value="currentPage",defaultValue="1",required=false)int currentPage,HttpSession session, Model model){
//        Integer userid=Integer.parseInt(session.getAttribute("UserId").toString());
////        PageInfo pageInfo=bookService.selectMySell(currentPage,userid);
////        model.addAttribute("pagemsg",pageInfo);
//
//
//
//        return "";
//    }

    @RequestMapping("/search")
    public String book(Model model,Map<String,Object> map,
                       @RequestParam(value = "key", defaultValue = "-1") String key,
                       @RequestParam(value = "page", defaultValue = "1") Integer page) {
        System.out.println(key);
        bookInfo.setBookName(key);
        bookInfo.setBookText(key);
        System.out.println(bookInfo);
        List<BookInfo> books;
        //开始分页（分页参数是页码和每页记录数），在下一条查询语句中使用分页
        PageHelper.startPage(page, 5);
            books = bookService.selectLike(bookInfo);
        System.out.println(books);
        //对象列表传入页面
        PageInfo<BookInfo> pageInfo = new PageInfo<BookInfo>(books);

        map.put("pageInfo", pageInfo);
        model.addAttribute("key", key);
        return "index/bookLikes";
    }




    @RequestMapping("/CreateOrder")  /** 直接购买**/
    public String CreateOrder(Integer BookId,Model model){
        List<BookInfo> bookInfos=new ArrayList<>();
        BookInfo bookinfo= bookService.selectById(BookId);
        String [] s =bookinfo.getPath().split(",");
        bookinfo.setPath(s[0]);
        bookInfos.add(bookinfo);
        ShoppingOrder=bookInfos;
        model.addAttribute("BookInfos",bookInfos);
        return "/orderinfo/order";
    }


    @RequestMapping("/SelectByState")/**通过状态查询图书信息*/
    public String SelectByState(@RequestParam(value="state",defaultValue ="4") Integer state,HttpSession session,Model model){
        Integer userid=Integer.parseInt(session.getAttribute("UserId").toString());
        List<BookInfo> bookInfos=bookService.selectByState(userid,state);
        List<BookInfo> bookInfos1=new ArrayList<>();
        for (BookInfo b :bookInfos ) {
            String s=b.getPath().split(",")[0];
            b.setPath(s);
            bookInfos1.add(b);
        }
        model.addAttribute("bookInfos",bookInfos1);
        return "PersonCenter/mysell";
    }

    @RequestMapping("/changeState")/*** 改变图书状态***/
    @ResponseBody
    public boolean ChangeState(@RequestParam(value = "BookId") Integer BookId ,@RequestParam(value = "state") Integer state){

        state++;
        System.out.println("111111111111111");
        boolean i=bookService.changeState(BookId,state);
        if(i) {
            if(state==2){
                bookService.changeOrderState(BookId,state);
                massageController.CreateMassageBySys("您购买的商品："+ BookId+"，已发货",bookService.selectByIdToOrders(BookId),massageService);
            }
            return true;
        }else{
            return false;
        }
    }

}
