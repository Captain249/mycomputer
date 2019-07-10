package com.spx.dao;

import com.spx.entity.Yp;
import com.spx.mybatis.mapper.MyBatisRepository;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@MyBatisRepository
public interface YpDao extends BaseDao<Yp>{
    Long findTotal();
    List<Yp> allyp(@Param("yp") Yp yp, int currentPage);
    int findTotalLike(@Param("yp") Yp yp);
}
