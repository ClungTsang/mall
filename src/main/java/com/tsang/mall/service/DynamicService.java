package com.tsang.mall.service;

import com.alibaba.fastjson.JSONObject;
import com.tsang.mall.mapper.DynamicMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

@Service
@CacheConfig(cacheNames = {"dynamic"})
public class DynamicService {

    @Autowired
    private DynamicMapper dynamicMapper;

    @Cacheable
    public Object selectAll(){
        return JSONObject.toJSON(dynamicMapper.selectAll());
    }

}
