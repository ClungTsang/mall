package com.tsang.mall.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Goods implements Serializable {

    private Integer id;

    private String title;

    private String imgPath;

    private Integer money;

}
