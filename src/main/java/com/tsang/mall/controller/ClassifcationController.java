package com.tsang.mall.controller;

import com.tsang.mall.service.ClassificationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@RestController
@RequestMapping("/cl")
@EnableSwagger2
@CrossOrigin(origins = "*",maxAge = 3600)
public class ClassifcationController {

    @Autowired
    private ClassificationService classificationService;

    @GetMapping("/selectClassById")
    public Object selectClassById(){
        return classificationService.selectClassById();
    }

}
