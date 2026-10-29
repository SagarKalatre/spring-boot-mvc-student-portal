package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller 
public class HomeController {

    // @GetMapping("/homePage")
    @RequestMapping ({"/", "/homePage"})
    public String openHomePage() {
        return "redirect:/homePage.html";
    }

    // @GetMapping("/index")
    @RequestMapping ({"/", "/index"})
    public String openHomePages() {
        return "index";
    }

    // About us
    // @GetMapping("/about")
    @RequestMapping ("/about")
    public String aboutUs() {
        return "about";
    }

    // Contact us
    // @GetMapping("/contact")
    @RequestMapping ("/contact")
    public String contactUs() {
        return "contact";
    }

    // Help
    // @GetMapping("/help")
    @RequestMapping ("/help")
    public String helpPage() {
        return "help";
    }
    // login
    @RequestMapping ("/login")
    public String loginPage() {
        return "login";
    }
    
    // student registration
    @RequestMapping ("/studentRegistration")
    public String studentRegistrationPage() {
        return "studentRegistration";
    }
}
