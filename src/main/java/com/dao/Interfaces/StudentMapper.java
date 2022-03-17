package com.dao.Interfaces;
import com.entity.Student;
import org.springframework.stereotype.Component;
import java.util.List;

@Component
public interface StudentMapper {
    Integer insert(Student student);
    Integer delete(int id);
    Integer update(Student student);
    Student selectOne(int id);
    List<Student> selectAll();
}
