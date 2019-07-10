package com.spx.dao;

import com.spx.entity.Xsq;
import com.spx.mybatis.mapper.MyBatisRepository;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@MyBatisRepository
public interface XsqDao extends BaseDao<Xsq>{
    Long findTotal();
    List<Xsq> allxsq(@Param("xsq") Xsq xsq, int currentPage);
    int findTotalLike(@Param("xsq") Xsq xsq);
}
