package edu.heuet.Pojo;

public class OrderPay {
    private Long OrderId;
    private Double Price;
    private String BookName;
    private String BookText;

    public Long getOrderId() {
        return OrderId;
    }

    public void setOrderId(Long orderId) {
        OrderId = orderId;
    }

    public Double getPrice() {
        return Price;
    }

    public void setPrice(Double price) {
        Price = price;
    }

    public String getBookName() {
        return BookName;
    }

    public void setBookName(String bookName) {
        BookName = bookName;
    }

    public String getBookText() {
        return BookText;
    }

    public void setBookText(String bookText) {
        BookText = bookText;
    }
}
