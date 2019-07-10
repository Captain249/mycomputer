package com.spx.dao;

import com.spx.entity.Xk;
import com.spx.mybatis.mapper.MyBatisRepository;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@MyBatisRepository
public interface XkDao extends BaseDao<Xk>{
    Long findTotal();
    List<Xk> allxk(@Param("xk") Xk xk, int currentPage);
    int findTotalLike(@Param("xk") Xk xk);
}
