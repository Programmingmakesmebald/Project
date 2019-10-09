package edu.heuet.Service;

import edu.heuet.Pojo.Massage;

import java.util.List;

public interface MassageService {
    boolean createMassage(Massage massage);

    List<Massage> getMassage(int userid);
}
