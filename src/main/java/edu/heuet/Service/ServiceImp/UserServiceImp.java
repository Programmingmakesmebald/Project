package edu.heuet.Service.ServiceImp;

import edu.heuet.Mapper.UserMapper;
import edu.heuet.Pojo.UserInfo;
import edu.heuet.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImp implements UserService {
    @Autowired
    private UserMapper  userMapper;

    @Override
    public Boolean registerInfo(UserInfo userInfo) {
        return userMapper.insertUserInfo(userInfo);
    }

    @Override
    public UserInfo selectUserInfo(UserInfo userInfo) {
        try{
        return userMapper.selectUserInfo(userInfo);}
        catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }


    public boolean checkPNum(String phoneNum) {
        try {
            return userMapper.checkPNum(phoneNum);
        }catch (Exception e){

            return false;
        }
    }

    @Override
    public boolean updateInfo(UserInfo userInfo) {
        return userMapper.updateInfo(userInfo);
    }


    public int updatePwd(String lPassword, String newLPassword,String UserId) {
        return userMapper.updatePwd(lPassword,newLPassword,UserId);
    }

}
