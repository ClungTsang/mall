package com.tsang.mall.service;

import com.alibaba.fastjson.JSON;
import com.tsang.mall.mapper.UserShoppingMapper;
import com.tsang.mall.model.UserShopping;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
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

    public void insert(Integer uid,Integer gid,Integer gnumber){
        UserShopping userShopping = userShoppingMapper.select(uid,gid);
        if(userShopping == null){
            userShoppingMapper.insert(uid,gid,gnumber);
        }else{
            int id = userShopping.getId();
            int oldGnumber = userShopping.getGnumber();
            gnumber = oldGnumber + gnumber;
            userShoppingMapper.update(gnumber,id);
        }

    }

    public void update(Integer gnumber,Integer id){
        userShoppingMapper.updateById( gnumber,id);
    }

    public void delete(Integer id){
        userShoppingMapper.deleteById(id);
    }

}
