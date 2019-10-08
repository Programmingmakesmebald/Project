package edu.heuet.Mapper;

import edu.heuet.Pojo.OrderInfo;

import java.util.List;

public interface OrderMapper {
    boolean insertOrder(OrderInfo orderInfo);  /** 插入单个订单*/

    boolean insertOrders(List<OrderInfo> orderInfos);  /** 可插入多张订单**/

    List<OrderInfo> selectOrders();  /** 查询全部订单**/

    List<OrderInfo> selectOrderByBuyer(int Buyer);  /** 根据Buyer查询订单**/
}
