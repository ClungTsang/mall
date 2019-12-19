package com.tsang.mall.mapper;

import com.tsang.mall.model.Dynamic;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface DynamicMapper {

    @Insert("insert into dynamic (id,title,url) values (#{id},#{title},#{url})")
    public void insert(Integer id, String title, String url);

    @Delete("delete from dynamic where id = #{id}")
    public void deleteById(Integer id);

    @Select("select * from dynamic where id = #{id}")
    public Dynamic selectById(Integer id);

    /**
     *
     * @return 获取最新动态
     */
    @Select("select * from dynamic ")
    public List<Dynamic> selectAll();
}
