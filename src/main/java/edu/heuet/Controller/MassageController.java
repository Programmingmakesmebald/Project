package edu.heuet.Controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import edu.heuet.Pojo.BookInfo;
import edu.heuet.Pojo.Massage;
import edu.heuet.Service.MassageService;
import edu.heuet.Util.TimeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/massage")
public class MassageController {
    @Autowired
    MassageService massageService;

//    @RequestMapping("/CreateMassage")
//    @ResponseBody
//    public String CreateMassage(Massage massage,HttpSession session, Model model){
//        Integer userid=Integer.parseInt(session.getAttribute("UserId").toString());
//        massage.setSender(userid);
//        massage.setSendtime(System.currentTimeMillis());
//        massage.setInforid(TimeUtil.getOrderId());
//        massageService.createMassage(massage);
//        return "success";
//    }

    public boolean CreateMassageBySys(String msg,Integer receiver,MassageService massageService){
        /**创建系统消息**/
        Massage massage=new Massage();
        massage.setSender(110);
        massage.setContent(msg);
        massage.setMsgstate(0);
        massage.setInforid(TimeUtil.getOrderId());
        massage.setReceiver(receiver);
        massage.setSendtime(System.currentTimeMillis());
        return massageService.createMassage(massage);
    }


    @RequestMapping("/GetMassage")/*** 获取系统消息**/
    public String GetMassage(Model model, HttpSession session,@RequestParam(value = "page", defaultValue = "1") Integer page,
                             @RequestParam(value = "pageSize", defaultValue = "10") Integer pageSize){
        int userid =Integer.parseInt(session.getAttribute("UserId").toString());
//        PageHelper.startPage(page,5);
        List<Massage> massages= massageService.getMassage(userid);
        List<Massage> massages1=new ArrayList<>();
        for (Massage m:massages) {
            String time=TimeUtil.changeCToTime(m.getSendtime());
            m.setFormatTime(time);
            massages1.add(m);
        }
        System.out.println("222222222222222::::"+massages1.size());
//        PageInfo<Massage> pageInfo = new PageInfo<>(massages1);
        model.addAttribute("massages",massages1);
//        System.out.println(pageInfo.getPages());
        return "massage/massages";
    }
}
