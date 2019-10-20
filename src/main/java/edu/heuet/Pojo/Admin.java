package edu.heuet.Pojo;

import org.springframework.stereotype.Component;

@Component
public class Admin {
    private String AdminId;
    private String AdminName;
    private String AdminNum;
    private String APassword;
    private String School;

    public Admin() {
    }

    public Admin(String adminId, String adminName, String adminNum, String APassword, String school) {
        AdminId = adminId;
        AdminName = adminName;
        AdminNum = adminNum;
        this.APassword = APassword;
        School = school;
    }

    public String getAdminId() {
        return AdminId;
    }

    public void setAdminId(String adminId) {
        AdminId = adminId;
    }

    public String getAdminName() {
        return AdminName;
    }

    public void setAdminName(String adminName) {
        AdminName = adminName;
    }

    public String getAdminNum() {
        return AdminNum;
    }

    public void setAdminNum(String adminNum) {
        AdminNum = adminNum;
    }

    public String getAPassword() {
        return APassword;
    }

    public void setAPassword(String APassword) {
        this.APassword = APassword;
    }

    public String getSchool() {
        return School;
    }

    public void setSchool(String school) {
        School = school;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "AdminId='" + AdminId + '\'' +
                ", AdminName='" + AdminName + '\'' +
                ", AdminNum='" + AdminNum + '\'' +
                ", APassword='" + APassword + '\'' +
                ", School='" + School + '\'' +
                '}';
    }
}
