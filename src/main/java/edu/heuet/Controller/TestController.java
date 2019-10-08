package edu.heuet.Controller;

import edu.heuet.Pojo.Massage;
import edu.heuet.Service.TestService;
import edu.heuet.Util.TimeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/test")
public class TestController {
    @Autowired
    TestService testService;

    @RequestMapping("/CreateMassage")
    @ResponseBody
    public String CreateMassage(Massage massage,HttpSession session, Model model){
        Integer userid=Integer.parseInt(session.getAttribute("UserId").toString());
        massage.setSender(userid);
        massage.setSendtime(System.currentTimeMillis());
        massage.setInforid(TimeUtil.getOrderId());
        testService.createMassage(massage);
        return "success";
    }


    @RequestMapping("/GetMassage")
    public String GetMassage(Model model, HttpSession session){
        int userid =Integer.parseInt(session.getAttribute("UserId").toString());
        List<Massage> massages= testService.getMassage(userid);
        List<Massage> massages1=new ArrayList<>();
        for (Massage m:massages) {
            String time=TimeUtil.changeCToTime(m.getSendtime());
            m.setFormatTime(time);
            massages1.add(m);
        }
        model.addAttribute("massages",massages1);
        return "massage/receiver";
    }
}
