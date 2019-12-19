package com.tsang.mall.controller;

import com.tsang.mall.service.FigureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import java.io.Serializable;

@RestController
@RequestMapping("/fi")
@EnableSwagger2
@CrossOrigin(origins = "*",maxAge = 3600)
public class FigureController  {

    @Autowired
    private FigureService figureService;

    @GetMapping("/selectAll")
    public Object selectAll(){
        return figureService.selectAll();
    }
}
