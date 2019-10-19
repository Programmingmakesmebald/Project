package edu.heuet.Service;

import edu.heuet.Pojo.BookInfo;
import edu.heuet.Pojo.PageInfo;

import java.util.List;


public interface BookService {
    Boolean insertBookInfo(BookInfo bookInfo);//卖书
    List<BookInfo> selectBookInfo();//浏览查询
    PageInfo<BookInfo> findByPage(int currentPage,int BookType);///分页查找图书信息
    List<BookInfo> selectLike(BookInfo bookInfo);  /** 关键字查找*/

    BookInfo selectById(Integer bookId);///通过BookID查找图书信息

    List<BookInfo> selectByState(Integer userid, Integer state);  /** 通过状态以及用户信息查找图书信息**/

    boolean changeState(Integer bookId, Integer state);   /*** 改变图书状态**/

    Integer selectByIdToOrders(Integer bookId);  /** 通过图书Id查询订单号***/

    void changeOrderState(Integer bookId, Integer state); /** 通过图书Id改变*订单状态**/

    void updateFrequent(Integer bookId);/***增加访客次数纪录**/
}
