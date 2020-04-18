package com.zhuguangjie.service;

import com.zhuguangjie.pojo.Emp;

import java.util.List;

public interface IEmpService {
    List<Emp> findAllEmp();
    List<Emp> findEmpByDeptNO(Long id);
   // List<Emp> findEmpByDept(Long id);
    int deleteEmpByNo(Long id);
    int updateEmp(Emp emp);
    Emp findEmpById(Long id);
    int addEmp(Emp emp);
    List<Emp> findEmpByPage();
}
