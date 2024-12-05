package top.nanguomm.nmall.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import top.nanguomm.nmall.entity.vo.Result;
import top.nanguomm.nmall.entity.User;
import top.nanguomm.nmall.service.UserService;

@RestController
@RequestMapping("/user")
@CrossOrigin
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

        //擦除密码
        user.setUserPwd(null);
        return Result.success(user);
    }

    @PostMapping("/register")
    public Result register(@RequestBody User user) {
        log.info(user.getUserEmail() + ":" + user.getUserPwd() + ":" + user.getUserTel());
        if(userService.register(user)) {
            return Result.success();
        }
        return Result.error("手机或邮箱重复");
    }
}
