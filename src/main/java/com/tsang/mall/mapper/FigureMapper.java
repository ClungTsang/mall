package com.tsang.mall.mapper;

import com.tsang.mall.model.Figure;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface FigureMapper {

    @Insert("insert into figure (id,imgPath,url) values (#{id},#{imgPath},#{url})")
    public void insert(Integer id, String imgPath, String url);

    @Delete("delete from figure where id = #{id}")
    public void deleteById(Integer id);

    @Select("select * from figure where id = #{id}")
    public Figure selectById(Integer id);

    /**
     * @return 获取滚动图
     */
    @Select("select * from figure ")
    public List<Figure> selectAll();
}
