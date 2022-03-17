package com.entity;

import lombok.Data;
import lombok.ToString;
import org.springframework.stereotype.Component;

@ToString
@Data
@Component
public class Student {
    private Integer id;
    private String name;
    private Integer age;
    private String sex;
}
