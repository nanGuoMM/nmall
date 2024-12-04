package top.nanguomm.nmall;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import top.nanguomm.nmall.entity.User;
import top.nanguomm.nmall.mapper.UserMapper;

import static org.junit.jupiter.api.Assertions.assertNotNull;

@SpringBootTest
class NmallApplicationTests {

    @Autowired
    private UserMapper userMapper;
    @Test
    public void testLogin() {
        String account = "admin@example.com";
        String password = "adminpassword";

        User user = userMapper.login(account, password);

        // 验证返回的 User 对象是否不为 null
        assertNotNull(user, "user->null");

        // 打印出来看看是否正确映射
        System.out.println(user);

        // 进一步验证字段
        assertNotNull(user.getPhone(), "phone->null");
        assertNotNull(user.getEmail(), "email->null");
        assertNotNull(user.getPassword(), "password->null");
    }

}
