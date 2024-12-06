package top.nanguomm.nmall.controller;


import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import top.nanguomm.nmall.entity.Order;
import top.nanguomm.nmall.entity.vo.Result;
import top.nanguomm.nmall.service.OderService;

@RestController
@RequestMapping("/order")
@CrossOrigin
@Slf4j
public class OderController {
    @Autowired
    private OderService orderService;

    @PostMapping("/create")
    public Result create(Order order) {
       Order re = orderService.create(order);
        return Result.success(re);
    }
}
