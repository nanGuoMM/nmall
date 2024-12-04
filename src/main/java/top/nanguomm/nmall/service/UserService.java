package top.nanguomm.nmall.service;


import top.nanguomm.nmall.entity.User;

public interface UserService {
    User login(String account, String password);

    boolean register(User user);

}
