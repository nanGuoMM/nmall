package top.nanguomm.nmall.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import top.nanguomm.nmall.entity.User;

@Mapper
public interface UserMapper {

    User login(@Param("account") String account, @Param("password") String password);
    boolean checkUserExists(@Param("user") User user);
    void insertUser(@Param("user") User user);
}
