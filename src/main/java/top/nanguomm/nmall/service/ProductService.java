package top.nanguomm.nmall.service;

import top.nanguomm.nmall.entity.Product;

import java.util.List;

public interface ProductService {
    List<Product> getProducts();
    List<Product> getProductsByCategory(Integer categoryId);
    Product getProductById(Integer productId);
}
