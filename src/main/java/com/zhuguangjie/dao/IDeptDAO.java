package com.zhuguangjie.dao;

import com.zhuguangjie.pojo.Dept;

import java.util.List;

public interface IDeptDAO {
    List<Dept> findAllDept();
    int deleteDeptById(Long id);
    Dept findDeptById(Long id);
    int updateDept(Dept dept);
    int addDept(Dept dept);
}
