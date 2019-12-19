package com.tsang.mall.service;

import com.tsang.mall.mapper.ClassificationMapper;
import com.tsang.mall.model.ClassificationGoods;
import com.tsang.mall.model.GoodsType;
import com.tsang.mall.model.TypeType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@CacheConfig(cacheNames = {"classification"})
public class ClassificationService {

    @Autowired
    private ClassificationMapper classificationMapper;

    @Cacheable
    public Object selectClassById(){

        List<ClassificationGoods> classList = classificationMapper.selectAll();
        for (int i = 0;i < classList.size();i++){
            List<GoodsType> goodsList = classificationMapper.selectGoodsById(classList.get(i).getId());

            for (int j = 0;j < goodsList.size();j++){
                List<TypeType> typeList = classificationMapper.selectTypeById(goodsList.get(j).getId());
                goodsList.get(j).setTypeType(typeList);
            }
            classList.get(i).setGoodsTypes(goodsList);
        }
        return classList;
    }

}
