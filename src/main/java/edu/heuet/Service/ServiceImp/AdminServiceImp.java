package edu.heuet.Service.ServiceImp;

import edu.heuet.Mapper.AdminMapper;
import edu.heuet.Pojo.Admin;
import edu.heuet.Pojo.BookInfo;
import edu.heuet.Pojo.OrderInfo;
import edu.heuet.Pojo.UserInfo;
import edu.heuet.Service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service("adminService")
public class AdminServiceImp implements AdminService {
    @Autowired
    AdminMapper adminMapper;

    @Override
    public int addAdmin(Admin admin) {/** 注册**/
        return adminMapper.addAdmin(admin);
    }

    @Override
    public Admin checkPNum(String AdminNum) { /** 登录查询根据手机号**/
        return adminMapper.checkPNum(AdminNum);
    }

    @Override
    public int updateInfo(Admin admin) {/** 修改个人信息*/
        return adminMapper.updateInfo(admin);
    }

    @Override
    public List<UserInfo> selectUser() {/** 查询全部用户*/
        return adminMapper.selectUser();
    }

    @Override
    public List<UserInfo> selectUserByPhoneNum(String PhoneNum) {/** 根据条件查询用户*/
        return adminMapper.selectUserByPhoneNum(PhoneNum);
    }
    @Override
    public List<UserInfo> selectUsersByUserId(int UserId) {/** 根据条件查询用户*/
        return adminMapper.selectUsersByUserId(UserId);
    }

    @Override
    public int punishUser(UserInfo userInfo) {/** 处罚或黑名单用户*/
        return adminMapper.punishUser(userInfo);
    }

    @Override
    public int deleteUser(UserInfo userInfo) {
        return adminMapper.deleteUser(userInfo);
    }

    @Override
    public List<BookInfo> selectBook() {/** 查询全部图书*/
        return adminMapper.selectBook();
    }

    @Override
    public int deleteBook(int BookId) {
        return adminMapper.deleteBook(BookId);
    }

    @Override
    public BookInfo selectBookByBookId(int BookId) {
        return adminMapper.selectBookByBookId(BookId);
    }

    @Override
    public List<BookInfo> selectBookByPhoneNum(String PhoneNum) {
        return adminMapper.selectBookByPhoneNum(PhoneNum);
    }

    @Override
    public List<BookInfo> selectBookByTypeId(int TypeId) {
        return adminMapper.selectBookByTypeId(TypeId);
    }

    @Override
    public List<BookInfo> selectBookByPAT(String PhoneNum, int TypeId) {
        HashMap<String,Object> map=new HashMap<>();
        map.put("PhoneNum",PhoneNum);
        map.put("TypeId",TypeId);
        return adminMapper.selectBookByPAT(map);
    }
    @Override
    public List<OrderInfo> selectOrder() {/** 查询全部图书*/
        return adminMapper.selectOrder();
    }
    @Override
    public List<OrderInfo> selectOrderByPhoneNum(String PhoneNum) {/** 根据条件查询图书*/
        return adminMapper.selectOrderByPhoneNum(PhoneNum);
    }
}
