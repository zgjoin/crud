package com.zhuguangjie.controller;

import com.zhuguangjie.pojo.Dept;
import com.zhuguangjie.service.IDeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/dept")
public class DeptController {
    @Autowired
    private IDeptService deptService;
    @RequestMapping("/allDept")
    public String findAllDept(Model model){
        //System.out.println("....");
        List<Dept> list=deptService.findAllDept();
        //System.out.println(list.get(0).getDeptNo());
        model.addAttribute("list",list);
        return "allDept";
    }
    @RequestMapping("/deleteDept/{deptNo}")
    public String deleteDeptById(@PathVariable("deptNo") Long id){
        deptService.deleteDeptById(id);
        return "redirect:/dept/allDept";
    }
    @RequestMapping("/findDeptById/{deptNo}")
    public String findDeptById(@PathVariable("deptNo") Long id,Model model){
        Dept dept=deptService.findDeptById(id);
        model.addAttribute("dept",dept);
        return "updateDept";
    }
    @RequestMapping("/updateDept")
    public String updateDept(Dept dept){
        deptService.updateDept(dept);
       // System.out.println(dept.getDeptNo());
        return "redirect:/dept/allDept";
    }
    @RequestMapping("toAddDept")
    public String toAddDept(){
        return "addDept";
    }
    @RequestMapping("/addDept")
    public String addDept(Dept dept){
        System.out.println(dept.getDeptNo());
        deptService.addDept(dept);
        return "redirect:/dept/allDept";
    }
}
