package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.Service.StudentService;
import com.example.demo.model.Student;

import ch.qos.logback.core.net.SyslogOutputStream;

@RestController
@RequestMapping("/rest")
public class StudemtRestController {

    @Autowired
    private StudentService studentService;

    @GetMapping({ "/", "/homePage" })
    public String openHomePage() {
        System.out.println("Home Page...");
        return "This is home page";
        // return "homePage";
    }

    @GetMapping("/show-studentById")
    public Student showAllStudentById() {
        Student student = studentService.searchStudentById(1);
        // return "All Student Records..";
        return student;
    }

    @GetMapping("/show-student")
    public List<Student> showAllStudent() {
        return studentService.showAllStudent();
    }

    @PostMapping("/save-student")
    public String saveStudent(@RequestBody Student student) {
        studentService.saveStudent(student);
        return "Student save Successfully..!";
    }

    @PutMapping("/update-student/{studentId}")
    public String updateStudent(@PathVariable int studentId, @RequestBody Student student) {
        // System.out.println(student);
        // System.out.println(studentId);
        // Student student2 = studentService.searchStudentById(studentId);
        // student2.setCity(student.getCity());
        // student2.setCourse(student.getCourse());
        // student2.setEmail(student.getEmail());
        // student2.setName(student.getName());
        // // student2.getPhone(student.getPhone());
        // studentService.saveStudent(student2);
        student.setStudentId(studentId);
        studentService.saveStudent(student);
        return "Student Updated...!";
    }

    @PatchMapping("/update-city/{studentId}")
    public String updateStudentCity(@PathVariable int studentId, @RequestBody Student student) {
        Student student3 = studentService.searchStudentById(studentId);
        student3.setCity(student.getCity());
        studentService.saveStudent(student3);
        return "Student City updated..";
    }

    @DeleteMapping("/delete-studentById/{studentId}")
    public String deleteStudentById(@PathVariable int studentId) {
        studentService.deleteStudentById(studentId);
        return "Student data deleted..";
    }

    // @DeleteMapping("/delete-studentById/{studentId}")
    // public String deleteStudentById(@PathVariable int studentId) {

    //     studentService.deleteStudentById(studentId);

    //     return "Student deleted Successfully..!";
    // }
}
