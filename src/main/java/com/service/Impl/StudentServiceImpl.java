package com.service.Impl;

import com.dao.Interfaces.StudentMapper;
import com.entity.Student;
import com.service.Interfaces.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import java.util.List;

    @Component
    public class StudentServiceImpl implements StudentService {
        private final StudentMapper studentMapper;
    @Autowired
    public StudentServiceImpl(StudentMapper studentMapper){
        this.studentMapper=studentMapper;
    }
    @Override
    public Integer insert(Student student) {
        return studentMapper.insert(student);
    }

    @Override
    public Integer delete(int id) {
        return studentMapper.delete(id);
    }

    @Override
    public Integer update(Student student) {
        return studentMapper.update(student);
    }

    @Override
    public Student selectOne(int id) {
        return studentMapper.selectOne(id);
    }

    @Override
    public List<Student> selectAll() {
        return studentMapper.selectAll();
    }
}
