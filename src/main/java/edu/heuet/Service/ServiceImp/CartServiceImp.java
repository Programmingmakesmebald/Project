package edu.heuet.Service.ServiceImp;

import edu.heuet.Mapper.CartMapper;
import edu.heuet.Pojo.BookInfo;
import edu.heuet.Pojo.PageInfo;
import edu.heuet.Service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("CartService")
public class CartServiceImp implements CartService {
    @Autowired
    private CartMapper cartMapper;

    public boolean addCart(int UserId, int bookId) {
        try{
            return cartMapper.insertCart(UserId,bookId);
        }catch (Exception e){
            return false;
        }

    }

    @Override
    public PageInfo<BookInfo> showCartByPage(int UserId, int currentPage ) {
        {
            PageInfo<BookInfo> pageInfo = new PageInfo<>();

            pageInfo.setCurrentPage(currentPage);

            int pageSize=5;
            pageInfo.setPageSize(pageSize);

            int totalCount=cartMapper.counts(UserId);
            pageInfo.setTotalCount(totalCount);

            double tC=totalCount;
            Double num=Math.ceil(tC/pageSize);
            pageInfo.setTotalPage(num.intValue());

            int start=(currentPage-1)*pageSize;
            int size=pageInfo.getPageSize();

            //封装每页显示的数据
            List<BookInfo> lists =cartMapper.showCartByPage(UserId,start,size);
            pageInfo.setLists(lists);
            return pageInfo;
        }
    }

    @Override
    public int counts(int UserId) {
        return cartMapper.counts(UserId);
    }

    @Override
    public BookInfo selectById(Integer bookId) {
        return cartMapper.selectById(bookId);
    }


    public boolean deleteShopBycart(Integer bookId, Integer userId) {
        try{
            return cartMapper.deleteShopBycart(bookId,userId);
        } catch (Exception e){
            return false;
        }
    }


}
