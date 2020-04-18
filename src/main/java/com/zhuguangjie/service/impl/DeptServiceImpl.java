package com.zhuguangjie.service.impl;

import com.zhuguangjie.dao.IDeptDAO;
import com.zhuguangjie.pojo.Dept;
import com.zhuguangjie.service.IDeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class DeptServiceImpl implements IDeptService {
    @Autowired
    private IDeptDAO deptDAO;
    @Override
    public List<Dept> findAllDept() {
        return deptDAO.findAllDept();
    }

    @Override
    public int deleteDeptById(Long id) {
        return deptDAO.deleteDeptById(id);
    }

    @Override
    public Dept findDeptById(Long id) {
        return deptDAO.findDeptById(id);
    }

    @Override
    public int updateDept(Dept dept) {
        return deptDAO.updateDept(dept);
    }

    @Override
    public int addDept(Dept dept) {
        return deptDAO.addDept(dept);
    }
}
