package com.spx.dao;

import com.spx.entity.Zb;
import com.spx.mybatis.mapper.MyBatisRepository;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@MyBatisRepository
public interface ZbDao extends BaseDao<Zb>{
    Long findTotal();
    List<Zb> allzb(@Param("zb") Zb zb, int currentPage);
    int findTotalLike(@Param("zb") Zb zb);
}
