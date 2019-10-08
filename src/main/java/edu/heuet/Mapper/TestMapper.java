package edu.heuet.Mapper;

import edu.heuet.Pojo.Massage;

import java.util.List;

public interface TestMapper {
    boolean createMassage(Massage massage);

    List<Massage> getMassage(int userid);
}
