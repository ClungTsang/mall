package com.tsang.mall.mapper;

import com.tsang.mall.model.Goods;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface GoodListMapper {

    @Insert("insert into goodsList (id,imgPath,url,money) values (#{id},#{imgPath},#{url},#{money})")
    public void insert(Integer id, String imgPath, String url,Integer money);

    @Delete("delete from goodsList where id = #{id}")
    public void deleteById(Integer id);

    /**
     *
     * @param id
     * @return id来查询商品
     */
    @Select("select * from goodsList where id = #{id}")
    List<Goods> selectById(Integer id);

    @Select("select * from goodsList where id = #{id}")
    Goods selectByiId(Integer id);

    /**
     *
     * @return 全部商品信息
     */
    @Select("select * from goodsList ")
    public List<Goods> selectAll();




}
