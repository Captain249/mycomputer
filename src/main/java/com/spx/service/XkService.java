package com.spx.service;

import com.spx.dao.BaseDao;
import com.spx.dao.XkDao;
import com.spx.entity.Xk;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.DEFAULT)
@Service
public class XkService extends BaseService<Xk>{

    @Autowired
    private XkDao xkDao;

    @Override
    protected BaseDao<Xk> getBaseDao() {
        return xkDao;
    }

    public Long findTotal(){
        return xkDao.findTotal();
    }

    public void insert(Xk xk){
        xkDao.insert(xk);
    }

    public Xk findXkById(int id){
        return xkDao.selectById(id);
    }

    public void edit(Xk xk){
        xkDao.update(xk);
    }

    public void deleteXkById(int id){
        xkDao.deleteById(id);
    }

    public List<Xk> allxk(Xk xk, int currentPage){
        if(currentPage==0){
            currentPage=1;
        }
        currentPage -=1;
        currentPage *=5;
        List<Xk> allxk = xkDao.allxk(xk,currentPage);
        return allxk;
    }

    public int findTotalLike(Xk xk){
        return xkDao.findTotalLike(xk);
    }
}
