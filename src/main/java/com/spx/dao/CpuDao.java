package com.spx.dao;

import com.spx.entity.Cpu;
import com.spx.mybatis.mapper.MyBatisRepository;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@MyBatisRepository
public interface CpuDao extends BaseDao<Cpu>{
    Long findTotal();
    List<Cpu> allcpu(@Param("cpu") Cpu cpu, int currentPage);
    int findTotalLike(@Param("cpu") Cpu cpu);
}
