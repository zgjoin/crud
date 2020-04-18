package com.zhuguangjie.service.impl;

import com.zhuguangjie.dao.IEmpDAO;
import com.zhuguangjie.pojo.Emp;
import com.zhuguangjie.service.IEmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class EmpServiceImpl implements IEmpService {
    @Autowired
    private IEmpDAO empDAO;
    @Override
    public List<Emp> findAllEmp() {
        return empDAO.findAllEmp();
    }

    @Override
    public List<Emp> findEmpByDeptNO(Long id) {
        return empDAO.findEmpByDeptNO(id);
    }

    /*@Override
    public List<Emp> findEmpByDept(Long id) {
        return empDAO.findEmpByDept(id);
    }*/

    @Override
    public int deleteEmpByNo(Long id) {
        return empDAO.deleteEmpByNo(id);
    }

    @Override
    public int updateEmp(Emp emp) {
        return empDAO.updateEmp(emp);
    }


    @Override
    public Emp findEmpById(Long id) {
        return empDAO.findEmpById(id);
    }

    @Override
    public int addEmp(Emp emp) {
        return empDAO.addEmp(emp);
    }

    @Override
    public List<Emp> findEmpByPage() {
        return empDAO.findEmpByPage();
    }


}
