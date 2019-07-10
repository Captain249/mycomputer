package com.spx.service;

import com.spx.dao.BaseDao;
import com.spx.dao.UserDao;
import com.spx.entity.Computer;
import com.spx.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.DEFAULT)
@Service
public class UserService extends BaseService<User>{

    @Autowired
    private UserDao userDao;

    @Override
    protected BaseDao<User> getBaseDao() {
        return userDao;
    }

    public User loginCheck(User user){
        return userDao.loginCheck(user);
    }

    public void savecomputer(Computer computer){
        userDao.savecomputer(computer);
    }

    public List<Computer> myComputer(int userid){
        return userDao.myComputer(userid);
    }

    public void deleteCpt(int id,int userid){
        userDao.deleteCpt(id,userid);
    }

    public Computer findCptById(int id){
        return userDao.findCptById(id);
    }
}
