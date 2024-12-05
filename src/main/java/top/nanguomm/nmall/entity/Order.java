package top.nanguomm.nmall.entity;

import lombok.Data;

import java.util.Date;

/**
 * 商品信息表(HwProductInfo)实体类
 *
 * @author nanguo
 * @since 2024-12-05 20:09:23
 */
@Data
public class Order {
    private Integer oderId;
    private Integer userId;
    private Integer productId;
    private Integer quantity;
    private Double  price;
    private Integer status;
    private Date addTime;
    /**
     * 删除标记，0-未删除 1-已删除
     */
    private Integer delFlag;
    /**
     * 创建人
     */
    private Integer createBy;
    /**
     * 创建时间
     */
    private Date createTime;
    /**
     * 更新人
     */
    private Integer updateBy;
    /**
     * 更新时间
     */
    private Date updateTime;
}
