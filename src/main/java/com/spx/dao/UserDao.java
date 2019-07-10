package com.spx.dao;


import com.spx.entity.Computer;
import com.spx.entity.User;
import com.spx.mybatis.mapper.MyBatisRepository;

import java.util.List;

@MyBatisRepository
public interface UserDao extends BaseDao<User>{

    User loginCheck(User user);

    void savecomputer(Computer computer);

    List<Computer> myComputer(int userid);

    void deleteCpt (int id,int userid);

    Computer findCptById (int id);
}
