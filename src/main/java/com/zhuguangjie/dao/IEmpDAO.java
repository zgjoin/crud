package com.zhuguangjie.dao;

import com.zhuguangjie.pojo.Emp;
/*import org.apache.ibatis.annotations.Param;*/

import java.util.List;

public interface IEmpDAO {
    List<Emp> findAllEmp();
    List<Emp> findEmpByDeptNO(Long id);//这里的id指的是deptno
   // List<Emp> findEmpByDept(Long id);
    int deleteEmpByNo(Long id);
    int updateEmp(Emp emp);
    Emp findEmpById(Long id);//这里的id指的是empno
    int addEmp(Emp emp);
    List<Emp> findEmpByPage();
}
