package com.tsang.mall.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;


@AllArgsConstructor
@NoArgsConstructor
@Data
public class ClassificationGoods implements Serializable {

    private Integer id;

    private String category;

    private List<GoodsType> goodsTypes;

    public ClassificationGoods(Integer id, String category) {
        this.id = id;
        this.category = category;
    }
}
