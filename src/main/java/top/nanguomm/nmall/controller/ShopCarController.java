package top.nanguomm.nmall.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import top.nanguomm.nmall.entity.ShoppingCart;
import top.nanguomm.nmall.entity.vo.Result;
import top.nanguomm.nmall.service.ShoppingCartService;

@RestController
@RequestMapping("/shopCar")
@CrossOrigin
@Slf4j
public class ShopCarController {
    @Autowired
    private ShoppingCartService shoppingCartService;

    @GetMapping("/add")
    public Result add(ShoppingCart shoppingCart) {
        shoppingCartService.add(shoppingCart);
        return Result.success();
    }

}
