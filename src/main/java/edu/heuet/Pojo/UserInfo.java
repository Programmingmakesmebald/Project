package edu.heuet.Pojo;

public class UserInfo {
    private String UserId;
    private String UserName;
    private String PhoneNum;
    private String LPassword;
    private String School;
    private String Credit;

    public String getCredit() {
        return Credit;
    }

    public void setCredit(String credit) {
        Credit = credit;
    }

    public String getUserId() {
        return UserId;
    }

    public void setUserId(String userId) {
        UserId = userId;
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String userName) {
        UserName = userName;
    }

    public String getPhoneNum() {
        return PhoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        PhoneNum = phoneNum;
    }

    public String getLPassword() {
        return LPassword;
    }

    public void setLPassword(String LPassword) {
        this.LPassword = LPassword;
    }

    public String getSchool() {
        return School;
    }

    public void setSchool(String school) {
        School = school;
    }

    @Override
    public String toString() {
        return "UserInfo{" +
                "UserId='" + UserId + '\'' +
                ", UserName='" + UserName + '\'' +
                ", PhoneNum='" + PhoneNum + '\'' +
                ", LPassword='" + LPassword + '\'' +
                ", School='" + School + '\'' +
                '}';
    }
}
