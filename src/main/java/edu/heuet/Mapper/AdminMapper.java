package edu.heuet.Mapper;

import edu.heuet.Pojo.Admin;
import edu.heuet.Pojo.BookInfo;
import edu.heuet.Pojo.OrderInfo;
import edu.heuet.Pojo.UserInfo;

import java.util.HashMap;
import java.util.List;

public interface AdminMapper {
    //管理员
    int addAdmin(Admin admin);/** 注册**/
    Admin checkPNum(String AdminNum); /** 登录查询根据手机号**/
    int updateInfo(Admin admin);/** 修改个人信息*/
    //用户
    List<UserInfo> selectUser();/** 查询全部用户*/
    List<UserInfo> selectUserByPhoneNum(String PhoneNum);/** 根据条件查询用户*/
    List<UserInfo> selectUsersByUserId(int UserId);/** 根据条件查询用户*/
    int punishUser(UserInfo userInfo);/** 处罚或黑名单用户*/
    int deleteUser(UserInfo userInfo);/** 移除用户*/
    //图书
    List<BookInfo> selectBook();/** 查询全部图书*/
    int deleteBook(int BookId);/** 删除图书根据图书ID*/
    BookInfo selectBookByBookId(int BookId);/** 根据条件查询图书*/
    List<BookInfo> selectBookByPhoneNum(String PhoneNum);/** 根据条件查询图书*/
    List<BookInfo> selectBookByTypeId(int TypeId);/** 根据条件查询图书*/
    List<BookInfo> selectBookByPAT(HashMap<String,Object> map);/** 根据条件查询图书*/
    //订单
    List<OrderInfo> selectOrder();/** 查询全部订单*/
    List<OrderInfo> selectOrderByPhoneNum(String PhoneNum);/** 根据条件查询订单*/
}
