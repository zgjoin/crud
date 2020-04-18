package com.zhuguangjie.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhuguangjie.pojo.Emp;
import com.zhuguangjie.service.IEmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/emp")
public class EmpController {
    @Autowired
    private IEmpService empService;
    //根据部门编号查找员工，并将员工信息展示在emplist表中
    @RequestMapping("/findEmpByDeptNo/{deptNo}")
    public String findEmpByDeptNo(@PathVariable("deptNo") Long id, Model model){
        List<Emp> list=empService.findEmpByDeptNO(id);
        model.addAttribute("list",list);
        return "empList";
    }
    @RequestMapping("/deleteEmpById/{empNo}")
    public String deleteEmpById(@PathVariable("empNo") Long id){
        empService.deleteEmpByNo(id);
        return "redirect:/dept/allDept";
    }
    @RequestMapping("/toEmpList")
    public String toEmpList(){
        return "empList";
    }
    @RequestMapping("/updateEmp")
    public String updateEmp(Emp emp){
        empService.updateEmp(emp);
        return "redirect:/emp/toEmpList";
    }
    @RequestMapping("/findEmpById/{empNo}")
    public String findEmpById(@PathVariable("empNo") Long id,Model model){
        Emp emp=empService.findEmpById(id);
        //System.out.println(emp.getDept());
        model.addAttribute("emp",emp);
        return "updateEmp";
    }
    @RequestMapping("/toAddEmp")
    public String toAddEmp(){
        return "addEmp";
    }
    @RequestMapping("/addEmp")
    public String addEmp(Emp emp){
        empService.addEmp(emp);
        return "redirect:/dept/allDept";
    }
    @RequestMapping("/findEmpByPage/{deptNo}")
    public String findEmpByPage(@PathVariable("deptNo") Long id,@RequestParam(required = true,defaultValue = "1") Integer pageNum,Model model,Emp emp){
        //导入PageHelper.jar包,(当前页,有2条数据)
        PageHelper.startPage(pageNum,2);
        List<Emp> elist = empService.findEmpByDeptNO(id);
        //封装好的pageInfo对象，实现分页
        PageInfo<Emp> page = new PageInfo<Emp>(elist);
        model.addAttribute("page",page);
        return "empList";
    }
}
