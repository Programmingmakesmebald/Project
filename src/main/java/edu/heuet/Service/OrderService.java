package edu.heuet.Service;

import edu.heuet.Pojo.BookInfo;
import edu.heuet.Pojo.OrderInfo;

import java.util.List;

public interface OrderService {
    boolean insertOrder(OrderInfo orderInfo);/***单条订单插入 **/

    boolean insertOrders(List<OrderInfo> orderInfos);/** 支持多条订单插入**/

    List<OrderInfo> selectOrders();  /** 查询全部订单**/

    List<OrderInfo> selectOrderByBuyer(int Buyer);/** 根据Buyer查询订单**/

    boolean ChangeOrderState(Long orderId, int i);

    List<Integer> selectSellers(Long orderId);

    List<OrderInfo> selectOrderByState(Integer buyer, Integer state);

    boolean ChangeOrderStateByBookId(Integer bookId, Integer state);

    OrderInfo selectOrdersByBookId(Integer bookId);

    BookInfo selectBookInfos(Integer bookId);

    boolean deleteOrder(Integer bookId);   /** 查询图书信息**/
}
