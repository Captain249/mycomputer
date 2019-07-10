package com.spx.dao;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import java.util.List;

public interface BaseDao<T> {

    /*
    * 查询列表数据
    * */
    List<T> selectList(@Param("page")int page, @Param("rows")int rows);

    /*
    * 根据主键查询一条数据
    * */
    T selectById(int id);

    /*
    * 添加一条数据
    * */
    void insert(T entity);

    /*
    * 修改一条数据
    * */
    void update(T entity);

    /*
    * 根据主键删除数据
    * */
    void deleteById(int id);

    /*
    * 查询数据条数,配合分页使用
    * */
    int selectCountForPage(T entity);

    /*
    * 分页查询列表数据
    * */
    List<T> selectForPage(T entity, RowBounds pagebounds);



}
