package com.example.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Student;

public interface StudentDAO extends JpaRepository<Student, Integer> {
    Student findStudentByStudentId(int student_id);

    List<Student> findByCityIgnoreCase(String city);

    // Search students by course
    List<Student> findByCourseIgnoreCase(String course);

    // Search students by email
    List<Student> findByEmailIgnoreCase(String email);
}
