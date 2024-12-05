package top.nanguomm.nmall.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import top.nanguomm.nmall.entity.Product;

import java.util.List;

@Mapper
public interface ProductMapper {

    List<Product> getProducts();

    List<Product> getProductsByCategoryId(@Param("categoryId") int categoryId);

    Product getProductById(@Param("productId") int productId);
}
