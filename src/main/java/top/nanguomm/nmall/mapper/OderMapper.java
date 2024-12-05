package top.nanguomm.nmall.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import top.nanguomm.nmall.entity.Order;

@Mapper
public interface OderMapper {

   void add(@Param("order") Order order);
}
