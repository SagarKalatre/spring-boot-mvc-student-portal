package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DashBoardController {

    // @GetMapping("/goto-dashboard")
    // public String openGotoDashboardPage() {
    //     return "goto-dashboard";
    // }

    @GetMapping("/student-registeationpage")
	public String openStudentRegistrationPage() {
		return "studentRegitrationPage";
	}
}
