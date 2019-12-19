package com.tsang.mall.service;

import com.alibaba.fastjson.JSONObject;
import com.tsang.mall.mapper.FigureMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

@Service
@CacheConfig(cacheNames = {"figure"})
public class FigureService {

    @Autowired
    private FigureMapper figureMapper;

    @Cacheable
    public Object selectAll(){
        return JSONObject.toJSON(figureMapper.selectAll());
    }

}
