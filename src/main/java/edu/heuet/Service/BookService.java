package edu.heuet.Service;

import edu.heuet.Pojo.BookInfo;
import edu.heuet.Pojo.PageInfo;

import java.util.List;


public interface BookService {
    Boolean insertBookInfo(BookInfo bookInfo);//卖书
    List<BookInfo> selectBookInfo();//浏览查询
    PageInfo<BookInfo> findByPage(int currentPage);
    List<BookInfo> selectLike(BookInfo bookInfo);

    BookInfo selectById(Integer bookId);

    List<BookInfo> selectByState(Integer userid, Integer state);
}
