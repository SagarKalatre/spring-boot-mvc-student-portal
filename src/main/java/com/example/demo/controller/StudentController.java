package com.example.demo.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.Service.StudentService;
import com.example.demo.model.Student;

@Controller
public class StudentController {

    private final DashBoardController dashBoardController;
    @Autowired
    private StudentService studentService;

    StudentController(DashBoardController dashBoardController) {
        this.dashBoardController = dashBoardController;
    }

    @GetMapping("/studentRegistration")
    public String openRegistrationPage() {
        return "studentRegistration";
    }

    @PostMapping("/save-student")
    public String saveStudent(@ModelAttribute Student student) {

        System.out.println("========== STUDENT DATA ==========");
        System.out.println(student);

        if (student.getName() != null && !student.getName().isBlank()) {

            studentService.saveStudent(student);

            System.out.println("Student Data Saved Successfully!");

        } else {

            System.out.println("Empty Student Object - Not Saved!");

        }

        return "redirect:/studentRegistration";
    }

    @GetMapping("/student-searchbyidpage")
    public String openSearchStudentByIdPage() {
        return "studentSearchByIdPage";
    }

    @PostMapping("/student-searchbyidpage")
    public String searchStudentById(@RequestParam int studentId, Model model) {

        Student student = studentService.searchStudentById(studentId);
        List<Student> studList = new ArrayList<Student>();
        studList.add(student);
        model.addAttribute("studList", studList);
        model.addAttribute("message", "Student not found!");
        // if (student != null) {
        // } else {
        // }

        return "showStudentByStudentId";
    }

    @GetMapping("/student-search")
    public String openStudentSearchPage() {
        return "studentSearch";
    }

    // @PostMapping("/student-search")
    public String searchStaudents(
            @RequestParam String searchType,
            @RequestParam String searchValue,
            Model model) {

        List<Student> studList = new ArrayList<>();

        if (searchType.equals("id")) {
            Student student = studentService.searchStudentById(
                    Integer.parseInt(searchValue));

            if (student != null) {
                studList.add(student);
            }
        } else {
            studList = studentService.searchStudents(searchType, searchValue);
        }

        model.addAttribute("studList", studList);
        model.addAttribute("searchType", searchType);
        model.addAttribute("searchValue", searchValue);
        model.addAttribute("message", "Student Not Found..!");

        return "showStudentSearchResults";
    }

    @GetMapping("/show-studentRecord/{studentId}")
    public String showUpdatedStudentRecord(@PathVariable int studentId, Model model) {
        Student student = studentService.searchStudentById(studentId);
        model.addAttribute("student", student);
        return "showStudentRecordPage";
    }

    @PostMapping("/update-student")
    public String showOneStudentRecordPage(Student student, Model model) {
        studentService.updateStudentRecord(student);
        System.out.println("Updated");
        // return "/show-studentRecord/" + student.getStudentId();
        return "showUpdatedStudentRecord";
        // studentService.updateStudentRecord(student);
        // System.out.println("Student Record updated....!");
        // return "showOneStudentRecordPage/" + student.getStudentId();
    }

    // @GetMapping ("/edit-student/{studentId}")
    // public String showOneStudentRecordPage(@PathVariable int studentId, Model
    // model) {
    // Student student = studentService.searchStudentById(studentId);
    // model.addAttribute("student", student);
    // return "updateStudentRecord";
    // }

    @PostMapping("/delete-student/{studentId}")
    public String deleteStudent(@PathVariable int studentId) {
        studentService.deleteStudentById(studentId);

        return "redirect:/student-searchbyidpage";
    }

    @GetMapping("/show-all-students")
    public String showAllStudents(Model model) {

        List<Student> students = studentService.getAllStudents();

        model.addAttribute("studList", students);

        return "showAllStudents";
    }

    @PostMapping("/student-search")
    public String searchStudent(
            @RequestParam String searchType,
            @RequestParam String searchValue,
            Model model) {

        if ("id".equals(searchType)) {
            Student student = studentService.searchStudentById(
                    Integer.parseInt(searchValue));

            List<Student> students = new ArrayList<>();

            if (student != null) {
                students.add(student);
            }

            model.addAttribute("studList", students);

        } else {
            List<Student> students = studentService.searchStudents(searchType, searchValue);

            model.addAttribute("studList", students);
        }

        return "showStudentSearchResults";
    }

    // @PostMapping("/studentRegistration")
    // public String saveStudent(@ModelAttribute Student student) {

    // System.out.println("Name: " + student.getName());
    // System.out.println("Email: " + student.getEmail());
    // System.out.println("Phone: " + student.getPhone());
    // System.out.println("Course: " + student.getCourse());
    // System.out.println("Password: " + student.getPassword());
    // System.out.println("Confirm Password: " + student.getConfirmPassword());

    // studentService.saveStudent(student);

    // return "studentRegistration";
    // }

    // @PostMapping("/save-student")
    // public String saveStudent(@ModelAttribute Student student) {

    // studentService.saveStudent(student);

    // return "redirect:/student-registration";
    // }

    // @GetMapping("/student-registration")
    // public String openStudentRegistration() {

    // return "studentRegistration";
    // }

    // @GetMapping("/student-searchbyidpage")
    // public String openSearchStudentByIdPage() {
    // return "studentsearchbyidpage";
    // }

    // @PostMapping("/student-searchbyidpage")
    // public String searchStudentById(@RequestParam int studentId) {
    // studentService.searchStudentById(studentId);
    // return "seacrchStudentPage";
    // }

    // @PostMapping("/student-searchbyidpage")
    // public String searchStudentById(@RequestParam int studentId, Model model) {

    // studentService.searchStudentById(studentId);

    // return "studentSearchByIdPage";
    // }

    // @PostMapping ("/student-search")
    // public String searchStudents(
    // @RequestParam String searchType,
    // @RequestParam String searchValue,
    // Model model) {

    // List<Student> studList;

    // if (searchValue == null || searchValue.isBlank()) {
    // studList = Collections.emptyList();
    // } else {
    // studList = studentService.searchStudents(
    // searchType, searchValue.trim());
    // }

    // model.addAttribute("studList", studList);
    // model.addAttribute("searchType", searchType);
    // model.addAttribute("searchValue", searchValue);
    // model.addAttribute("message", "no matching student found!");

    // return "showStudentSearchResults";
    // }

    // @PostMapping ("/student-search")
    // public String searchStaudents(
    // @RequestParam String searchType,
    // @RequestParam String searchValue,
    // Model model) {

    // List<Student> studList = new ArrayList<>();

    // if (searchValue == null || searchValue.isBlank()) {
    // model.addAttribute("message", "Please enter a seach value..!");
    // } else if (searchType.equals("id")) {
    // try {
    // Student student = studentService.searchStudentById(
    // Integer.parseInt(searchValue.trim()));

    // if (student != null) {
    // studList.add(student);
    // }
    // } catch (NumberFormatException e) {
    // model.addAttribute("message", "Please enter a valid Student ID!");
    // }
    // } else {
    // studList = studentService.searchStudents(
    // searchType, searchValue.trim());
    // }

    // model.addAttribute("studList", studList);
    // model.addAttribute("searchType", searchType);
    // model.addAttribute("searchValue", searchValue);

    // if (studList.isEmpty() && !model.containsAttribute("message")) {
    // model.addAttribute("message", "No matching student found..!");
    // }

    // return "showStudentSearchResults";
    // }

}