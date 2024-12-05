package top.nanguomm.nmall.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import top.nanguomm.nmall.entity.Order;
import top.nanguomm.nmall.entity.Product;
import top.nanguomm.nmall.mapper.OderMapper;
import top.nanguomm.nmall.mapper.ProductMapper;
import top.nanguomm.nmall.service.OderService;

import java.util.UUID;

@Service
public class OderServiceImpl implements OderService {

    @Autowired
    private OderMapper oderMapper;

    @Autowired
    private ProductMapper productMapper;

    @Override
    public void add(@ModelAttribute Order order) {
       //计算价钱
        Product product = productMapper.getProductById(order.getProductId());
        Double price = order.getQuantity() * product.getProductUnitPrice();

        order.setCreateBy(order.getUserId());
        order.setPrice(price);

        order.setStatus(0);

        oderMapper.add(order);
    }

    @Override
    public Order create(Order order) {
        //计算价钱
        Product product = productMapper.getProductById(order.getProductId());
        Double price = order.getQuantity() * product.getProductUnitPrice();

        order.setCreateBy(order.getUserId());
        order.setPrice(price);

        order.setStatus(1);
        oderMapper.add(order);

        return order;
    }
}
