# 简单整合springboot+mybatis+redis+swagger2

## 技术选型

技术 | 版本 | 说明
----|----|----
SpringBoot | 2.2.2 | 容器+MVC框架
MyBatis | 2.1.1 | ORM框架  
Swagger-UI | 2.9.2 | 文档生产工具
Redis | 3.2 | 分布式缓存
Druid | 1.1.20 | 数据库连接池
Lombok | 1.18.10 | 简化对象封装工具
slf4j | 1.7.21 | 日志工具

# 使用流程
##### 本项目启动需要在application.yml配置文件中配置相关文件，数据库中需要导入OnlineMall.sql脚本。更改MySql、Redis，的ip地址，默认127.0.0.1为本地

#### 项目包结构
``` lua
src
├── config -- SpringBoot中的Java配置
├── controller -- 控制器层代码
├── mapper -- 数据访问层代码，存放我们自定义查询的dao接口，以xxxDao命名
├── model -- 数据传输对象封装
└── service -- 业务层接口代码
```

#### 资源文件说明

``` lua
res
├── sql -- 存放SQL脚本
├── application.yml -- SpringBoot的配置文件
```

#### 接口定义规则

- 创建表记录：POST /{控制器路由名称}/insert
- 修改表记录：POST /{控制器路由名称}/update/{id}
- 删除指定表记录：POST /{控制器路由名称}/delete/{id}
- 获取指定记录详情：GET /{控制器路由名称}/{id}

**具体参数及返回结果定义可以运行代码查看Swagger-UI的Api文档：**
**访问 ip:port/swagger-ui.html**

#### 项目运行

安装完相关依赖以后直接启动com.tsang.mall.MallApplication类的main函数即可。
