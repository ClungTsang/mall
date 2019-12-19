package com.tsang.mall.mapper;

import com.tsang.mall.model.Recommended;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface RecommendedMapper {
    @Insert("insert into recommended (id,gid) values (#{id},#{gid})")
    public void insert(Integer id, Integer gid);

    @Delete("delete from recommended where id = #{id}")
    public void deleteById(Integer id);

    @Select("select * from recommended where id = #{id}")
    public Recommended selectById(Integer id);

    @Select("select * from recommended ")
    public List<Recommended> selectAll();

    /**
     *
     * @return 获取精品推荐
     */
    @Select("select r.id,r.gid,g.title,g.imgPath,g.money from recommended r left join goodsList g on r.gid = g.id")
    List<Recommended> selectAllGoodRecommended();


}
