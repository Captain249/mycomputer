package com.spx.service;

import com.spx.dao.BaseDao;
import com.spx.dao.XsqDao;
import com.spx.entity.Xsq;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.DEFAULT)
@Service
public class XsqService extends BaseService<Xsq>{

    @Autowired
    private XsqDao xsqDao;

    @Override
    protected BaseDao<Xsq> getBaseDao() {
        return xsqDao;
    }

    public Long findTotal(){
        return xsqDao.findTotal();
    }

    public void insert(Xsq xsq){
        xsqDao.insert(xsq);
    }

    public Xsq findXsqById(int id){
        return xsqDao.selectById(id);
    }

    public void edit(Xsq xsq){
        xsqDao.update(xsq);
    }

    public void deleteXsqById(int id){
        xsqDao.deleteById(id);
    }

    public List<Xsq> allxsq(Xsq xsq, int currentPage){
        if(currentPage==0){
            currentPage=1;
        }
        currentPage -=1;
        currentPage *=5;
        List<Xsq> allxsq = xsqDao.allxsq(xsq,currentPage);
        return allxsq;
    }

    public int findTotalLike(Xsq xsq){
        return xsqDao.findTotalLike(xsq);
    }
}
