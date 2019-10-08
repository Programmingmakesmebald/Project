package edu.heuet.Pojo;

import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class BookInfo {
    private Integer BookId;
    private Integer Seller;
    private Integer TypeId;
    private Double Price;
    private String BookName ;
    private String BookText;
    private Integer Frequency;
    private String Path;
    private List<String> ImagePath;
    private Integer BookState;

    public Integer getBookState() {
        return BookState;
    }

    public void setBookState(Integer bookState) {
        BookState = bookState;
    }

    public String getPath() {
        return Path;
    }

    public void setPath(String path) {
        Path = path;
    }

    public List<String> getImagePath() {
        return ImagePath;
    }

    public void setImagePath(List<String> imagePath) {
        ImagePath = imagePath;
    }

    public Integer getBookId() {
        return BookId;
    }

    public void setBookId(Integer bookId) {
        BookId = bookId;
    }

    public Integer getSeller() {
        return Seller;
    }

    public void setSeller(Integer seller) {
        Seller = seller;
    }

    public Integer getTypeId() {
        return TypeId;
    }

    public void setTypeId(Integer typeId) {
        TypeId = typeId;
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

    public Integer getFrequency() {
        return Frequency;
    }

    public void setFrequency(Integer frequency) {
        Frequency = frequency;
    }

    @Override
    public String toString() {
        return "BookInfo{" +
                "BookId=" + BookId +
                ", Seller=" + Seller +
                ", TypeId=" + TypeId +
                ", Price=" + Price +
                ", BookName='" + BookName + '\'' +
                ", BookText='" + BookText + '\'' +
                ", Frequency=" + Frequency +
                ", Path='" + Path + '\'' +
                ", ImagePath=" + ImagePath +
                ", BookState=" + BookState +
                '}';
    }
}
