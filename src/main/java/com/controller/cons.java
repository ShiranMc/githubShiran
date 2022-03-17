package com.controller;

import com.entity.Student;
import com.service.Interfaces.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;

@Controller
public class cons {
    private final StudentService studentService;
    @Autowired
    public cons(StudentService studentService){
        this.studentService=studentService;
    }
    @RequestMapping("insert")
    public ModelAndView PageString(Student student){
        studentService.insert(student);
        return Mode_View();
    }
    @RequestMapping("pages")
    public ModelAndView page(){
        return Mode_View();
    }
    @RequestMapping("update")
    public ModelAndView updateDate(Student student){
        studentService.update(student);
        return Mode_View();
    }
    @RequestMapping("delete/{date}")
    public ModelAndView deleteDate(@PathVariable("date") int id){
        studentService.delete(id);
        return Mode_View();
    }
    public ModelAndView Mode_View(){
        List<Student> studentList=studentService.selectAll();
        return new ModelAndView("home","students",studentList);
    }
}
