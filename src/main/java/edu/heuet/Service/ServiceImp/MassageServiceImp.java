package edu.heuet.Service.ServiceImp;

import edu.heuet.Mapper.MassageMapper;
import edu.heuet.Pojo.Massage;
import edu.heuet.Service.MassageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("massageService")
public class MassageServiceImp implements MassageService {
    @Autowired
    MassageMapper massageMapper;

    public boolean createMassage(Massage massage) {
        try {
            System.out.println("1111111111111111111111");
            return massageMapper.createMassage(massage);
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public List<Massage> getMassage(int userid) {
        return massageMapper.getMassage(userid);
    }
}
