package com.tsang.mall.mapper;

import com.tsang.mall.model.ClassificationGoods;
import com.tsang.mall.model.GoodsType;
import com.tsang.mall.model.TypeType;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface ClassificationMapper {

    @Insert("insert into classification (id,category) values (#{id},#{category})")
    void insert(Integer id, String category);

    @Delete("delete from classification where id = #{id}")
    void deleteById(Integer id);

    @Select("select * from classification where id = #{id}")
    List<ClassificationGoods> selectById(Integer id);

    @Select("select * from classification ")
    List<ClassificationGoods> selectAll();

    @Select("select * from goodsType where cid = #{id}")
    List<GoodsType> selectGoodsById(Integer id);

    @Select("select * from typeType where gid = #{id}")
    List<TypeType> selectTypeById(Integer id);
}
