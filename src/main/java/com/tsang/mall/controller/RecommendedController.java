package com.tsang.mall.controller;

import com.tsang.mall.service.RecommendedService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import java.io.Serializable;

@RestController
@EnableSwagger2
//@Api(tags = "Recommended接口")
@CrossOrigin(origins = "*",maxAge = 3600)
@RequestMapping("/re")
public class RecommendedController   {

    @Autowired
    private RecommendedService recommendedService;

    @GetMapping("/selectById")
    public Object selectById( Integer id){
        return recommendedService.selectById(id);
    }

    @GetMapping("/selectAll")
    public Object selectAll(){
        return recommendedService.selectAll();
    }

    @GetMapping("/delete")
    public void delete(Integer id){
        recommendedService.delete(id);
    }

    @PostMapping("/insert")
    public void insert(Integer id, Integer gid){
        recommendedService.insert(id,gid);
    }

    @GetMapping("/selectAllGR")
    public Object selectAllGoodRecommended(){
        return recommendedService.selectAllGoodRecommended();
    }

}
