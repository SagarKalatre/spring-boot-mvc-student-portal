package com.example.demo.Service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.StudentDAO;
import com.example.demo.model.Student;

@Service
public class StudentService {
    @Autowired
    private StudentDAO studentDAO;

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
    //     studentDAO.deleteById(studentId);
    // }
}
