package com.tsang.mall.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class GoodsType implements Serializable {

    private Integer id;

    private Integer cid;

    private String type;

    private List<TypeType> typeType;

    public GoodsType(Integer id, Integer cid, String type) {
        this.id = id;
        this.cid = cid;
        this.type = type;
    }
}
