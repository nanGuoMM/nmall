package top.nanguomm.nmall.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 商品信息表(HwProductInfo)实体类
 *
 * @author makejava
 * @since 2024-12-05 10:57:23
 */
@Data
public class Product implements Serializable {
    private static final long serialVersionUID = 186563154276663994L;
    /**
     * 商品ID，主键，自动增长
     */
    private Integer productId;
    /**
     * 商品标题
     */
    private String productTitle;
    /**
     * 商品副标题
     */
    private String productSubtitle;
    /**
     * 商品单价
     */
    private Double productUnitPrice;
    /**
     * 商品图片地址
     */
    private String productImageUrl;
    /**
     * 商品描述
     */
    private String productDesc;
    /**
     * 商品类别ID
     */
    private Integer categoriesId;
    /**
     * 商品状态，0-可用，1-不可用
     */
    private Integer status;
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
    /**
     * 是否精品，0-不是 1-是
     */
    private Integer isRecommend;



}

