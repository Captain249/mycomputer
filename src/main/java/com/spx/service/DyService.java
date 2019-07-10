package com.spx.service;

import com.spx.dao.BaseDao;
import com.spx.dao.DyDao;
import com.spx.entity.Dy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.DEFAULT)
@Service
public class DyService extends BaseService<Dy>{

    @Autowired
    private DyDao dyDao;

    @Override
    protected BaseDao<Dy> getBaseDao() {
        return dyDao;
    }

    public Long findTotal(){
        return dyDao.findTotal();
    }

    public void insert(Dy dy){
        dyDao.insert(dy);
    }

    public Dy findDyById(int id){
        return dyDao.selectById(id);
    }

    public void edit(Dy dy){
        dyDao.update(dy);
    }

    public void deleteDyById(int id){
        dyDao.deleteById(id);
    }

    public List<Dy> alldy(Dy dy, int currentPage){
        if(currentPage==0){
            currentPage=1;
        }
        currentPage -=1;
        currentPage *=5;
        List<Dy> alldy = dyDao.alldy(dy,currentPage);
        return alldy;
    }

    public int findTotalLike(Dy dy){
        return dyDao.findTotalLike(dy);
    }
}
