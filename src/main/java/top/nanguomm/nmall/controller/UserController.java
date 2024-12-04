package top.nanguomm.nmall.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;
import top.nanguomm.nmall.entity.User;

@RestController
@RequestMapping("/user")
@Slf4j
public class UserController {

    @GetMapping("/login")
    public String login(String account, String password) {
        log.info(account + ":" + password);
        return "success";
    }

    @PostMapping("/register")
    public String register(@RequestBody User user) {
        log.info(user.getEmail() + ":" + user.getPassword() + ":" + user.getPhone());
       return "success";
    }
}
