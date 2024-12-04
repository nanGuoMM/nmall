package top.nanguomm.nmall.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import top.nanguomm.nmall.entity.Result;
import top.nanguomm.nmall.entity.User;
import top.nanguomm.nmall.service.UserService;

@RestController
@RequestMapping("/user")
@Slf4j
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/login")
    public Result login(String account, String password) {
        log.info(account + ":" + password);
        User user = userService.login(account,password);
        if(user == null) {
            return Result.error("账号或密码错误");
        }
        return Result.success(user);
    }

    @PostMapping("/register")
    public String register(@RequestBody User user) {
        log.info(user.getEmail() + ":" + user.getPassword() + ":" + user.getPhone());
       return "success";
    }
}
