package com.tsang.mall.service;

import com.alibaba.fastjson.JSON;
import com.tsang.mall.mapper.UserShoppingMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

@Service
@CacheConfig(cacheNames = "userShopping")
public class UserShoppingService {

    @Autowired
    private UserShoppingMapper userShoppingMapper;

    @Cacheable
    public Object selectById(Integer id){
        return JSON.toJSON(userShoppingMapper.selectById(id));
    }

    @Cacheable
    public void insert(Integer uid,Integer gid,Integer gnumber){
        userShoppingMapper.insert(uid,gid,gnumber);
    }

    @CachePut
    public void update(Integer gnumber,Integer id){
        userShoppingMapper.updateById( gnumber,id);
    }


}
