package edu.heuet.Mapper;


import edu.heuet.Pojo.UserInfo;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    Boolean insertUserInfo(UserInfo userInfo);//注册
    UserInfo selectUserInfo(UserInfo userInfo);//登录查询
    boolean checkPNum(@Param("PhoneNum") String phoneNum); /** 手机号验证*/

    boolean updateInfo(UserInfo userInfo);  /** x修改信息**/

    int updatePwd(@Param("LPassword") String LPassword, @Param("NewLPassword") String NewLPassword,@Param("UserId")String UserId); /** 修改密码*/

}
