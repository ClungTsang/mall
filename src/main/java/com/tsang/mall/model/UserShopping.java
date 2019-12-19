package com.tsang.mall.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class UserShopping implements Serializable {

    private Integer id;

    private Integer gid;

    private Integer uid;

    private Integer gnumber;

    List<Goods> goods;

    public UserShopping(Integer uid, Integer gnumber) {
        this.uid = uid;
        this.gnumber = gnumber;
    }
}
