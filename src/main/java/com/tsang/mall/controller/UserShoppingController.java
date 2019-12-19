package com.tsang.mall.controller;

import com.tsang.mall.service.UserShoppingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@RestController
@EnableSwagger2
@RequestMapping("/US")
@CrossOrigin(origins = "*",maxAge = 3600)
public class UserShoppingController  {

    @Autowired
    private UserShoppingService userShoppingService;

    @PostMapping("/update")
    public void update( Integer gnumber, Integer id){
         userShoppingService.update(gnumber,id);
    }
    @PostMapping("/insert")
    public void insert( Integer uid, Integer gid, Integer gnumber){
        userShoppingService.insert(uid,gid,gnumber);
    }

    @GetMapping("/delete/{id}")
    public void delete(@PathVariable  Integer id){
        userShoppingService.delete(id);
    }

}
