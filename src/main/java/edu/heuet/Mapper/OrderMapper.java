package edu.heuet.Mapper;

import edu.heuet.Pojo.BookInfo;
import edu.heuet.Pojo.OrderInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderMapper {
    boolean insertOrder(OrderInfo orderInfo);  /** 插入单个订单*/

    boolean insertOrders(List<OrderInfo> orderInfos);  /** 可插入多张订单**/

    List<OrderInfo> selectOrders();  /** 查询全部订单**/

    List<OrderInfo> selectOrderByBuyer(int Buyer);/** 根据Buyer查询订单**/

    boolean ChangeOrderState(@Param("OrderId")Long OrderId, @Param("state") int state);/** 改变订单状态*/

    void ChangeBookState(@Param("OrderId")Long OrderId, @Param("state") int state);/** 改变图书状态*/

    List<Integer> selectSellers(Long orderId);

    List<OrderInfo> selectOrderByState(@Param("Buyer") Integer buyer,@Param("state") Integer state);

    boolean ChangeOrderStateByBookId(@Param("BookId") Integer bookId,@Param("state") Integer state);

    OrderInfo selectOrdersByBookId(Integer bookId);

    BookInfo selectBookInfos(Integer bookId);
}
