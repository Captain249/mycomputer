package com.spx.dao;

import com.spx.entity.Nc;
import com.spx.mybatis.mapper.MyBatisRepository;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@MyBatisRepository
public interface NcDao extends BaseDao<Nc>{
    Long findTotal();
    List<Nc> allnc(@Param("nc") Nc nc, int currentPage);
    int findTotalLike(@Param("nc") Nc nc);
}
