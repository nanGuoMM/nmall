package top.nanguomm.nmall.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import top.nanguomm.nmall.entity.vo.Result;
import top.nanguomm.nmall.service.ProductService;

@RestController
@RequestMapping("/product")
@CrossOrigin
@Slf4j
public class ProductController {
    @Autowired
    private ProductService productService;

    @GetMapping("/recommendList")
    public Result recommendList() {
        return Result.success(productService.getProducts());
    }

    @GetMapping("/category")
    public Result getCategory(@RequestParam("categoriesId")Integer categoriesId) {
        log.info("categoriesId{}", categoriesId);

       return Result.success(productService.getProductsByCategory(categoriesId));
    }

    @GetMapping("/findProductById")
    public Result findProductById(@RequestParam("id")Integer productId) {

        log.info("productId{}", productId);

       return Result.success(productService.getProductById(productId));
    }
}
