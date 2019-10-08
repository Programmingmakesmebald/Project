package edu.heuet.Service;

import edu.heuet.Pojo.UserInfo;
import org.springframework.stereotype.Service;


public interface UserService {
    Boolean registerInfo(UserInfo userInfo);//注册
    UserInfo selectUserInfo(UserInfo userInfo);//登录查询
    boolean checkPNum(String phoneNum); /** 手机号存在性检验**/

    boolean updateInfo(UserInfo userInfo);

    int updatePwd(String lPassword, String newLPassword,String UserId);  /** 修改个人信息*/
}
