package top.nanguomm.nmall.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.nanguomm.nmall.entity.Product;
import top.nanguomm.nmall.mapper.ProductMapper;
import top.nanguomm.nmall.service.ProductService;

import java.util.Collections;
import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductMapper productMapper;

    @Override
    public List<Product> getProducts() {
        return productMapper.getProducts();
    }

    @Override
    public List<Product> getProductsByCategory(Integer categoryId) {

        return productMapper.getProductsByCategoryId(categoryId);
    }
}
