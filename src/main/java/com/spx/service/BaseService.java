package com.spx.service;

import com.spx.dao.BaseDao;

import java.util.List;

public abstract class BaseService<T> {

    /*
    * 返回BaseDao的实例
    * */
    protected abstract BaseDao<T> getBaseDao();

    /*
    * 获取对象列表信息无分页(无条件)
    * */
    public List<T> queryList(int page,int rows){
        int min = (page-1)*rows;
        return getBaseDao().selectList(min,rows);
    }

    /*
    * 根据id查找单个对象
    * */
    public T queryInfo(int id){
        return getBaseDao().selectById(id);
    }

    /*
    * 新增一个对象
    * */
    public void insertInfo(T entity){
        getBaseDao().insert(entity);
    }

    /*
    * 根据id删除一个对象
    * */
    public void deleteInfo(int id){
        getBaseDao().deleteById(id);
    }
}
