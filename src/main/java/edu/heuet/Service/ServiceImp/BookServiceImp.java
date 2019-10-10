package edu.heuet.Service.ServiceImp;


import edu.heuet.Mapper.BookMapper;
import edu.heuet.Pojo.BookInfo;
import edu.heuet.Pojo.PageInfo;
import edu.heuet.Service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service("bookService")
public class BookServiceImp implements BookService {
    @Autowired
    BookMapper bookMapper;

    public Boolean insertBookInfo(BookInfo bookInfo) {
        return bookMapper.insertBookInfo(bookInfo);
    }

    public List<BookInfo> selectBookInfo() {
        return bookMapper.selectBookInfo();
    }


    public PageInfo<BookInfo> findByPage(int currentPage)
    {
        HashMap<String,Object> map=new HashMap<String,Object>();
        PageInfo<BookInfo> pageInfo = new PageInfo<>();

        pageInfo.setCurrentPage(currentPage);

        int pageSize=10;
        pageInfo.setPageSize(pageSize);

        int totalCount=bookMapper.counts();
        pageInfo.setTotalCount(totalCount);

        double tC=totalCount;
        Double num=Math.ceil(tC/pageSize);
        pageInfo.setTotalPage(num.intValue());

        map.put("start",(currentPage-1)*pageSize);
        map.put("size",pageInfo.getPageSize());
        //封装每页显示的数据
        List<BookInfo> lists =bookMapper.findByPage(map);
        List<BookInfo> list1=new ArrayList<>();
        for( BookInfo b:lists){
            String  s=b.getPath();
            String[] paths1=s.split(",");
            List<String> paths2=new ArrayList<>();
            for(String i :paths1){
                paths2.add(i);
            }
            b.setImagePath(paths2);
            list1.add(b);
        }
        pageInfo.setLists(list1);
        return pageInfo;
    }


    /**
     * 根据查询条件查询消息列表
     */
    public List<BookInfo> selectBook(String BookName,String BookText) {

        List<BookInfo> List = new ArrayList<>();
        BookInfo bookInfo =new BookInfo();
        bookInfo.setBookName(BookName);
        bookInfo.setBookText(BookText);
        List.add(bookInfo);
        return List;
    }


    public int counts() {
        return bookMapper.counts();
    }

    @Override
    public List<BookInfo> selectLike(BookInfo bookInfo) {
        return bookMapper.selectLike(bookInfo);
    }

    @Override
    public BookInfo selectById(Integer bookId) {
        return bookMapper.selectById(bookId);
    }

    @Override
    public List<BookInfo> selectByState(Integer userid, Integer state) {
        return bookMapper.selectByState(userid,state);
    }

    @Override
    public boolean changeState(Integer bookId, Integer state) {
        return bookMapper.changeState(bookId,state);
    }

    @Override
    public Integer selectByIdToOrders(Integer bookId) {
        return bookMapper.selectByIdToOrders(bookId);
    }

    @Override
    public void changeOrderState(Integer bookId, Integer state) {
        bookMapper.changeOrderState(bookId,state);
    }
}
