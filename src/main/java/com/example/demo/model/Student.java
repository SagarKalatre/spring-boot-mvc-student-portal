package com.example.demo.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
// @Getter
// @Setter
@NoArgsConstructor
@AllArgsConstructor
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private Integer studentId;
    @Column
    private String name;
    @Column
    private String email;
    @Column
    private String phone;
    @Column
    private String course;
    @Column(name = "citye")
    private String city;
    @Column
    private String password;
    @Column
    private String confirmPassword;

    // public int getStudentId() {
    // return studentId;
    // }
    // public void setStudentId(int studentId) {
    // this.studentId = studentId;
    // }
    // public String getName() {
    // return name;
    // }
    // public void setName(String name) {
    // this.name = name;
    // }
    // public String getEmail() {
    // return email;
    // }
    // public void setEmail(String email) {
    // this.email = email;
    // }
    // public String getPhone() {
    // return phone;
    // }
    // public void setPhone(String phone) {
    // this.phone = phone;
    // }
    // public String getCourse() {
    // return course;
    // }
    // public void setCourse(String course) {
    // this.course = course;
    // }
    // public String getPassword() {
    // return password;
    // }
    // public void setPassword(String password) {
    // this.password = password;
    // }
    // public String getConfirmPassword() {
    // return confirmPassword;
    // }
    // public void setConfirmPassword(String confirmPassword) {
    // this.confirmPassword = confirmPassword;
    // }

}
