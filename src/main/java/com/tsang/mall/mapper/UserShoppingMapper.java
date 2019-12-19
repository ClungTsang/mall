package com.tsang.mall.mapper;

import com.tsang.mall.model.UserShopping;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface UserShoppingMapper {

    @Insert("insert into userShopping (uid,gid,gnumber) values (#{uid},#{gid},#{gnumber})")
    public void insert(Integer uid, Integer gid,Integer gnumber);

    @Delete("delete from userShopping where id = #{id}")
    public void deleteById(Integer id);

    /**
     * 修改userShopping表中的gnumber
     * @param gnumber
     * @param id
     */
    @Update("update userShopping set gnumber = #{gnumber} where id = #{id}")
    void updateById(Integer gnumber , Integer id);

    @Select("select * from userShopping where gid = #{gid} limit 1")
    UserShopping selectByGid(Integer gid);

    @Select("select * from userShopping where uid = #{uid} and gid = #{gid}")
    UserShopping select(Integer uid,Integer gid);


    @Update("update userShopping set gnumber = gnumber + 1 where gid = #{gid}")
    void updateGnumber(Integer gid);

    @Update("update userShopping set gnumber = #{gnumber} where id = #{id}")
    void update(Integer gnumber , Integer id);
    /**
     *r0     * @param id
     * @return 用户id来查询购物车
     */
    @Select("select * from userShopping where id = #{id}")
    public UserShopping selectById(Integer id);

    @Select("select * from userShopping ")
    public List<UserShopping> selectAll();


    /**
     *
     * @param uid
     * @return
     */
    @Select("select * from userShopping where uid = #{uid}")
    public List<UserShopping> selectGoodByUserUid(Integer uid);


}
