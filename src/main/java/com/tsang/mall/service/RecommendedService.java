package com.tsang.mall.service;

import com.alibaba.fastjson.JSONObject;
import com.tsang.mall.mapper.RecommendedMapper;
import com.tsang.mall.model.Recommended;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@CacheConfig(cacheNames = "recommended")
public class RecommendedService {

    @Autowired
    private RecommendedMapper recommendedMapper;

    @Cacheable
    public void insert(Integer id, Integer gid ){
        recommendedMapper.insert(id,gid);
    }

    @CacheEvict(beforeInvocation = true)
    public void delete(Integer id){
        recommendedMapper.deleteById(id);
    }

    @Cacheable
    public Object selectById(Integer id){
        return JSONObject.toJSON(recommendedMapper.selectById(id));
    }

    @Cacheable
    public Object selectAll(){
        return JSONObject.toJSON(recommendedMapper.selectAll());
    }

    @Cacheable
    public Object selectAllGoodRecommended(){
        return JSONObject.toJSON(recommendedMapper.selectAllGoodRecommended());
    }
}
