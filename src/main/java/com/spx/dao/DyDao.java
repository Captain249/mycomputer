package com.spx.dao;

import com.spx.entity.Dy;
import com.spx.mybatis.mapper.MyBatisRepository;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@MyBatisRepository
public interface DyDao extends BaseDao<Dy>{
    Long findTotal();
    List<Dy> alldy(@Param("dy") Dy dy, int currentPage);
    int findTotalLike(@Param("dy") Dy dy);
}
