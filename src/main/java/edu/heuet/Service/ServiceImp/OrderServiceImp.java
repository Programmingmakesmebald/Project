package edu.heuet.Service.ServiceImp;

import edu.heuet.Mapper.OrderMapper;
import edu.heuet.Pojo.OrderInfo;
import edu.heuet.Service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("orderService")
public class OrderServiceImp implements OrderService {
    @Autowired
    public OrderMapper orderMapper;

    @Override
    public boolean insertOrder(OrderInfo orderInfo) {
        return orderMapper.insertOrder(orderInfo);
    }

    @Override
    public boolean insertOrders(List<OrderInfo> orderInfos) {
        return orderMapper.insertOrders(orderInfos);
    }

    @Override
    public List<OrderInfo> selectOrders() {
        return orderMapper.selectOrders();
    }

    @Override
    public List<OrderInfo> selectOrderByBuyer(int Buyer) {
        return orderMapper.selectOrderByBuyer(Buyer);
    }

    @Override
    public boolean ChangeOrderState(Long orderId, int i) {
        orderMapper.ChangeBookState(orderId,1);
        return orderMapper.ChangeOrderState(orderId,i);
    }

    @Override
    public List<Integer> selectSellers(Long orderId) {
        return orderMapper.selectSellers(orderId);
    }
}
