package com.spx.service;

import com.spx.dao.BaseDao;
import com.spx.dao.YpDao;
import com.spx.entity.Yp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.DEFAULT)
@Service
public class YpService extends BaseService<Yp>{

    @Autowired
    private YpDao ypDao;

    @Override
    protected BaseDao<Yp> getBaseDao() {
        return ypDao;
    }

    public Long findTotal(){
        return ypDao.findTotal();
    }

    public void insert(Yp yp){
        ypDao.insert(yp);
    }

    public Yp findYpById(int id){
        return ypDao.selectById(id);
    }

    public void edit(Yp yp){
        ypDao.update(yp);
    }

    public void deleteYpById(int id){
        ypDao.deleteById(id);
    }

    public List<Yp> allyp(Yp yp, int currentPage){
        if(currentPage==0){
            currentPage=1;
        }
        currentPage -=1;
        currentPage *=5;
        List<Yp> allyp = ypDao.allyp(yp,currentPage);
        return allyp;
    }

    public int findTotalLike(Yp yp){
        return ypDao.findTotalLike(yp);
    }

}
