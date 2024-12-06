package top.nanguomm.nmall.entity;

import lombok.Data;

import java.util.Date;

@Data
public class ShoppingCart {

    private int cartId;        // 购物车ID
    private int userId;        // 用户ID
    private int productId;     // 商品ID
    private int quantity;      // 商品数量
    private Date addTime; // 添加时间
    private Date updateTime; // 更新时间
    private byte delFlag;      // 删除标记（0表示未删除，1表示已删除）

}
