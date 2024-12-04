package top.nanguomm.nmall.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.nanguomm.nmall.entity.User;
import top.nanguomm.nmall.mapper.UserMapper;
import top.nanguomm.nmall.service.UserService;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public User login(String account, String password) {
        return userMapper.login(account,password);
    }

    @Override
    public boolean register(User user) {
       if (userMapper.checkUserExists(user)) {
           return false;
       }

       userMapper.insertUser(user);

      return true;
    }
}
