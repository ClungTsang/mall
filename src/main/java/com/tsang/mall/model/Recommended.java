package com.tsang.mall.model;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Recommended  implements Serializable {

    private Integer id;

    private Integer gid;

    private String title;

    private String imgPath;

    private Integer money;

    public Recommended(Integer id, Integer gid) {
        this.id = id;
        this.gid = gid;
    }
}
