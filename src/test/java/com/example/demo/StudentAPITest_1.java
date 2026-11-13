
package com.example.demo;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;

import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;

import com.example.demo.Service.StudentService;
import com.example.demo.dao.StudentDAO;
import com.example.demo.model.Student;

@ExtendWith(MockitoExtension.class)
public class StudentAPITest_1 {

    @Mock
    private StudentDAO studentDAO;

    @InjectMocks
    private StudentService studentService;

    @Test
    public void searchStudentById() {

        Student student = new Student();

        student.setStudentId(1);
        student.setName("Sagar Kalatre");
        student.setEmail("sagar@xyz.gmail.com");
        student.setCourse("Java Developer");
        student.setPhone("9529108251");
        student.setCity("Pune");

        Mockito.when(studentDAO.findStudentByStudentId(1))
                .thenReturn(student);

        Student student2 = studentService.searchStudentById(1);

        Assertions.assertEquals(student.getName(), student2.getName());
    }

    @Test
    public void searchStudentById1() {

        Student student = new Student();

        student.setStudentId(1);
        student.setName("Rahul More");
        student.setEmail("rahul@abc.gmail.com");
        student.setCourse("Python Developer");
        student.setPhone("9845344453");
        student.setCity("Pune");

        Mockito.when(studentDAO.findStudentByStudentId(1))
                .thenReturn(student);

        Student student2 = studentService.searchStudentById1(1);

        Assertions.assertNotNull(student2);
        Assertions.assertEquals(1, student2.getStudentId());
    }
}
