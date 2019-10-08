package edu.heuet.Pojo;

import java.sql.Date;

public class OrderInfo {
    private long OrderId;
    private Integer Buyer;
    private Integer Seller;
    private Integer BookId;
    private Integer OrderState;
    private Double Price;
    private String OrderTime;




    public long getOrderId() {
        return OrderId;
    }

    public void setOrderId(long orderId) {
        OrderId = orderId;
    }

    public Integer getBuyer() {
        return Buyer;
    }

    public void setBuyer(Integer buyer) {
        Buyer = buyer;
    }

    public Integer getSeller() {
        return Seller;
    }

    public void setSeller(Integer seller) {
        Seller = seller;
    }

    public Integer getBookId() {
        return BookId;
    }

    public void setBookId(Integer bookId) {
        BookId = bookId;
    }

    public Integer getOrderState() {
        return OrderState;
    }

    public void setOrderState(Integer orderState) {
        OrderState = orderState;
    }

    public Double getPrice() {
        return Price;
    }

    public void setPrice(Double price) {
        Price = price;
    }

    public String getOrderTime() {
        return OrderTime;
    }

    public void setOrderTime(String orderTime) {
        OrderTime = orderTime;
    }

    @Override
    public String toString() {
        return "OrderInfo{" +
                "OrderId=" + OrderId +
                ", Buyer=" + Buyer +
                ", Seller=" + Seller +
                ", BookId=" + BookId +
                ", OrderState=" + OrderState +
                ", Price=" + Price +
                ", OrderTime='" + OrderTime + '\'' +
                '}';
    }
}
