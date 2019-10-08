package edu.heuet.Service;

import edu.heuet.Pojo.BookInfo;
import edu.heuet.Pojo.PageInfo;

public interface CartService {
    boolean addCart(int UserId, int bookId); //添加商品进购物车


    PageInfo<BookInfo> showCartByPage(int UserId, int currentPage);//分页查询用户购物车
    int counts(int UserId);  //购物车列表总数

    BookInfo selectById(Integer bookId);

    boolean deleteShopBycart(Integer bookId, Integer userId);
}
