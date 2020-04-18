package com.zhuguangjie.pojo;

import java.util.HashSet;
import java.util.Set;

public class Dept {
    private Long deptNo;
    private String dName;
    private String loc;

    public Set<Emp> getEmp() {
        return emp;
    }

    public void setEmp(Set<Emp> emp) {
        this.emp = emp;
    }

    private Set<Emp> emp=new HashSet<Emp>();

    public Long getDeptNo() {
        return deptNo;
    }

    public void setDeptNo(Long deptNo) {
        this.deptNo = deptNo;
    }

    public String getdName() {
        return dName;
    }

    public void setdName(String dName) {
        this.dName = dName;
    }

    public String getLoc() {
        return loc;
    }

    public void setLoc(String loc) {
        this.loc = loc;
    }
}
