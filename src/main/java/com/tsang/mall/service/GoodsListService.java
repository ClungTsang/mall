package com.tsang.mall.service;

import com.alibaba.fastjson.JSON;
import com.tsang.mall.mapper.GoodListMapper;
import com.tsang.mall.mapper.UserShoppingMapper;
import com.tsang.mall.model.Goods;
import com.tsang.mall.model.UserShopping;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
@CacheConfig(cacheNames = "goodsList")
public class GoodsListService {

    @Autowired
    private GoodListMapper goodListMapper;
    @Autowired
    private UserShoppingMapper userShoppingMapper;

    @Cacheable
    public Object selectAll(){
        return JSON.toJSON(goodListMapper.selectAll());
    }

    @Cacheable
    public Object selectById(Integer id){
        return JSON.toJSON(goodListMapper.selectByiId(id));
    }

    public Object selectGoodByUserId(Integer uid){
        List<UserShopping> userShoppings = userShoppingMapper.selectGoodByUserUid(uid);
        for (int i = 0;i < userShoppings.size();i++){
            List<Goods> goods = goodListMapper.selectById(userShoppings.get(i).getGid());
            userShoppings.get(i).setGoods(goods);
        }
        return userShoppings;
    }


}
