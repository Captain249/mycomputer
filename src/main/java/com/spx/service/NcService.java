package com.spx.service;

import com.spx.dao.BaseDao;
import com.spx.dao.NcDao;
import com.spx.entity.Nc;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.DEFAULT)
@Service
public class NcService extends BaseService<Nc>{

    @Autowired
    private NcDao ncDao;

    @Override
    protected BaseDao<Nc> getBaseDao() {
        return ncDao;
    }

    public Long findTotal(){
        return ncDao.findTotal();
    }

    public void insert(Nc nc){
        ncDao.insert(nc);
    }

    public Nc findNcById(int id){
        return ncDao.selectById(id);
    }

    public void edit(Nc nc){
        ncDao.update(nc);
    }

    public void deleteNcById(int id){
        ncDao.deleteById(id);
    }

    public List<Nc> allnc(Nc nc, int currentPage){
        if(currentPage==0){
            currentPage=1;
        }
        currentPage -=1;
        currentPage *=5;
        List<Nc> allnc = ncDao.allnc(nc,currentPage);
        return allnc;
    }

    public int findTotalLike(Nc nc){
        return ncDao.findTotalLike(nc);
    }
}
