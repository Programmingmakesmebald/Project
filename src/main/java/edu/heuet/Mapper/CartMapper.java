package edu.heuet.Mapper;

import edu.heuet.Pojo.BookInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CartMapper {
    //加入购物车
    Boolean insertCart(@Param("UserId") int UserId, @Param("BookId") int BookId);

    //分页显示购物车
    List<BookInfo> showCartByPage(@Param("UserId") int UserId, @Param("start") int start, @Param("size") int size);

    int counts(int UserId); //购物车总数

    BookInfo selectById(Integer bookId);

    boolean deleteShopBycart(@Param("BookId") Integer bookId, @Param("UserId")Integer userId);   /** 通过Id查询图书信息**/
}
