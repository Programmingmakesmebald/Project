package edu.heuet.Service.ServiceImp;

import edu.heuet.Mapper.TestMapper;
import edu.heuet.Pojo.Massage;
import edu.heuet.Service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TestServiceImp implements TestService {
    @Autowired
    TestMapper testMapper;

    public boolean createMassage(Massage massage) {
        return testMapper.createMassage(massage);
    }

    @Override
    public List<Massage> getMassage(int userid) {
        return testMapper.getMassage(userid);
    }
}
