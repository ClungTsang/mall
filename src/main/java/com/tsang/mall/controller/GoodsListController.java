package com.tsang.mall.controller;

import com.tsang.mall.service.GoodsListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/gl")
@CrossOrigin(origins = "*",maxAge = 3600)
public class GoodsListController  {

    @Autowired
    private GoodsListService goodsListService;

    @GetMapping("/selectAll")
    public Object selectAll(){
        return goodsListService.selectAll();
    }

    @GetMapping("/selectById/{id}")
    public Object selectById(@PathVariable  Integer id){
        return goodsListService.selectById(id);
    }

    @GetMapping("/selectGoodByUserId/{id}")
    public Object selectGoodByUserId(@PathVariable Integer id){
        return goodsListService.selectGoodByUserId(id);
    }


}
