package edu.heuet.Mapper;


import edu.heuet.Pojo.BookInfo;
import org.apache.ibatis.annotations.Param;

import java.util.HashMap;
import java.util.List;

public interface BookMapper {
    Boolean insertBookInfo(BookInfo bookInfo);//卖书
    List<BookInfo> selectBookInfo();//浏览查询


    List<BookInfo> findByPage(HashMap<String,Object> map);//分页操作
    int counts(@Param("BookType") int BookType);//图书总数
    /**
     * 查询所有图书数据
     *
     */

    List<BookInfo> selectBookList(BookInfo bookInfo);  /** **/

    List<BookInfo> selectLike(BookInfo bookInfo);/** **/

    BookInfo selectById(@Param("BookId") Integer bookId);

    List<BookInfo> selectByState(@Param("userid") Integer userid,@Param("state")  Integer state);

    boolean changeState(@Param("bookId") Integer bookId, @Param("state") Integer state);

    Integer selectByIdToOrders(Integer bookId);

    void changeOrderState(@Param("BookId") Integer bookId, @Param("state") Integer state);
}
