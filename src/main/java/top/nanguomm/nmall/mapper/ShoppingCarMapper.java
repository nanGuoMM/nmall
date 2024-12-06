package top.nanguomm.nmall.mapper;

import org.apache.ibatis.annotations.Mapper;
import top.nanguomm.nmall.entity.ShoppingCart;

@Mapper
public interface ShoppingCarMapper {

    void add(ShoppingCart shoppingCart);
}
