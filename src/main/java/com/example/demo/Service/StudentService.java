
package com.example.demo.Service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.example.demo.dao.StudentDAO;
import com.example.demo.model.Student;

@Service

public class StudentService {
    @Autowired
    private StudentDAO studentDAO;

    // Logger Configuration
    private static final Logger LOGGER = LoggerFactory.getLogger(StudentService.class);

    public void saveStudent(Student student) {
        studentDAO.save(student);
        System.out.println("Student Data Save..");
    }

    // public void searchStudentById(int student_id) {
    // System.out.println("Student ID -: " + student_id);
    // Student student = studentDAO.findStudentByStudentId(student_id);
    // System.out.println(student);
    // }

    public Student searchStudentById(int student_id) {
        System.out.println("Student ID -: " + student_id);
        Student student = studentDAO.findStudentByStudentId(student_id);
        System.out.println(student);
        return student;
    }

    public List<Student> searchStudents(String searchType, String searchValue) {

        switch (searchType) {

            case "city":
                return studentDAO.findByCityIgnoreCase(searchValue);

            case "course":
                return studentDAO.findByCourseIgnoreCase(searchValue);

            case "email":
                return studentDAO.findByEmailIgnoreCase(searchValue);

            default:
                return new ArrayList<>();
        }
    }

    public List<Student> getAllStudents() {
        return studentDAO.findAll();
    }

    public void updateStudentRecord(Student student) {
        // throw new UnsupportedOperationException("Not supported yet.");
        studentDAO.save(student);
    }

    public void deleteStudentById(int studentId) {
        // TODO Auto-generated method stub
        // throw new UnsupportedOperationException("Unimplemented method
        // 'deleteStudentById'");

        studentDAO.deleteById(studentId);
    }

    public List<Student> showAllStudent() {
        // TODO Auto-generated method stub
        // throw new UnsupportedOperationException("Unimplemented method
        // 'showAllStudent'");
        return studentDAO.findAll();
    }

    // public void deleteStudentById(int studentId) {
    // studentDAO.deleteById(studentId);
    // }

    public Student searchStudentById1(int studentId) {
        System.out.println("Student ID: " + studentId);

        LOGGER.info("Student ID: {}", studentId);

        Student student = studentDAO.findStudentByStudentId(studentId);

        // if (student != null && student.getStudentId() == 1) {
        if (student != null) {
            LOGGER.trace(">> Student found of Id: {}", student.getStudentId());
            LOGGER.info("Student information: {}", student);
            System.out.println(student);
            return student;
        }

        System.out.println("Student not found for ID");
        LOGGER.error("Student Not Found...!");

        return null;
    }
}
