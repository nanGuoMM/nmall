package top.nanguomm.nmall.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 系统用户表(SysUser)实体类
 *
 * @author makejava
 * @since 2024-12-05 08:55:25
 */
@Data
public class User implements Serializable {
    private static final long serialVersionUID = 791877513431675349L;
    /**
     * 用户id，主键，自动增长
     */
    private Integer userId;
    /**
     * 用户电话号码
     */
    private String userTel;
    /**
     * 用户邮箱地址
     */
    private String userEmail;
    /**
     * 用户密码
     */
    private String userPwd;
    /**
     * 用户生日
     */
    private Date userBirthday;
    /**
     * 会员等级
     */
    private Integer userGrade;
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

