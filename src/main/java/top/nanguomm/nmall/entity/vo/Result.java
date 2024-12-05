package top.nanguomm.nmall.entity.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Result {
    private Integer code;
    private String msg;
    private Object data;
    //增删改 成功响应
    public static Result success() {
        return new Result(0, "success", null);
    }

    //查询 成功响应
    public static Result success(Object data) {
        return new Result(0, "success",data);
    }

    //失败响应
    public static Result error(String msg) {
        return new Result(500, msg, null);
    }
}
