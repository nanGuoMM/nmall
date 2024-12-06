package top.nanguomm.nmall.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.nanguomm.nmall.entity.ShoppingCart;
import top.nanguomm.nmall.mapper.ShoppingCarMapper;
import top.nanguomm.nmall.service.ShoppingCartService;

@Service
public class ShoppingCarServiceImpl implements ShoppingCartService {

    @Autowired
    private ShoppingCarMapper shoppingCarMapper;

    @Override
    public void add(ShoppingCart shoppingCart) {
       shoppingCarMapper.add(shoppingCart);
    }
}
