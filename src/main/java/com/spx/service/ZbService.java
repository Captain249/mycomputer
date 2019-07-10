package com.spx.service;

import com.spx.dao.BaseDao;
import com.spx.dao.ZbDao;
import com.spx.entity.Zb;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.DEFAULT)
@Service
public class ZbService extends BaseService<Zb>{

    @Autowired
    private ZbDao zbDao;

    @Override
    protected BaseDao<Zb> getBaseDao() {
        return zbDao;
    }

    public Long findTotal(){
        return zbDao.findTotal();
    }

    public void insert(Zb zb){
        zbDao.insert(zb);
    }

    public Zb findZbById(int id){
        return zbDao.selectById(id);
    }

    public void edit(Zb zb){
        zbDao.update(zb);
    }

    public void deleteZbById(int id){
        zbDao.deleteById(id);
    }

    public List<Zb> allzb(Zb zb, int currentPage){
        if(currentPage==0){
            currentPage=1;
        }
        currentPage -=1;
        currentPage *=5;
        List<Zb> allzb = zbDao.allzb(zb,currentPage);
        return allzb;
    }

    public int findTotalLike(Zb zb){
        return zbDao.findTotalLike(zb);
    }

}
