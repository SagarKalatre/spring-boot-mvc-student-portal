package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    // @GetMapping("/homePage")
    @RequestMapping({ "/", "/homePage" })
    public String openHomePage() {
        return "redirect:/homePage.html";
    }

    // @GetMapping("/index")
    @RequestMapping({ "/", "/index" })
    public String openHomePages() {
        return "index";
    }

    // About us
    // @GetMapping("/about")
    @RequestMapping("/about")
    public String aboutUs() {
        return "about";
    }

    // Contact us
    // @GetMapping("/contact")
    @RequestMapping("/contact")
    public String contactUs() {
        return "contact";
    }

    // Help
    // @GetMapping("/help")
    @RequestMapping("/help")
    public String helpPage() {
        return "help";
    }

    // login
    // @GetMapping("/login")
    // @RequestMapping("/login")
    // public String loginPage(Model model) {
    //     model.addAttribute("name", "Sagar");
    //     model.addAttribute("age", 21);
    //     List<String> studentName = new ArrayList<>();
    //     studentName.add("Sagar");
    //     studentName.add("Rahul");
    //     studentName.add("Amit");
    //     studentName.add("Rohit");

    //     model.addAttribute("studentName", studentName);
    //     return "login";
    // }

    @RequestMapping("/login")
    public ModelAndView loginPage() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("name", "Vishal");
        modelAndView.addObject("age", 19);
        modelAndView.setViewName("login");

        List<String> studenList = new ArrayList<>();
        studenList.add("Sagar");
        studenList.add("Rahul");
        studenList.add("Amit");
        // studenList.add("Rohit");

        modelAndView.addObject("studentName", studenList);
        return modelAndView;
    }

    // student registration
    @RequestMapping("/studentRegistration")
    public String studentRegistrationPage() {
        return "studentRegistration";
    }

    // forgot Password
    @RequestMapping("/forgotPassword")
    public String forgotPasswordPage() {
        return "forgotPassword";
    }
}
