package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.Service.LoginService;
import com.example.demo.model.Login;
// import ch.qos.logback.core.model.Model;

@Controller
public class LoginController {
    // @PostMapping("/goto-dashboard")
    // public void openGotoDashboardPage(@ModelAttribute Login login) {
    // String username = login.getUsername();
    // String password = login.getPassword();
    // System.err.println("User Name : " + username + ", Password -: " + password);
    // System.out.println("Goto DashBoard Page..");
    // }

    @Autowired
    private LoginService loginService;

    /*
     * @PostMapping("/goto-dashboard")
     * public void openGotoDashboardPage(HttpServletRequest httpServletRequest) {
     * String username=httpServletRequest.getParameter("username");
     * String password=httpServletRequest.getParameter("password");
     * System.err.println("Username -: "+username+", Password -: "+password);
     * System.err.println("Goto Dashboard Page...");
     * }
     */
    /*
     * @PostMapping("/goto-dashboard")
     * public void openGotoDashboardPage(@RequestParam("username") String username,
     * 
     * @RequestParam("password") String password) {
     * System.err.println("Username -: "+username+", Password -: "+password);
     * System.err.println("Goto Dashboard Page...");
     * }
     */
    // @PostMapping("/goto-dashboard")
    // public String openGotoDashboardPage(@ModelAttribute Login login) {
    // loginService.openGotoDashboardPage(login);

    // return "goto-dashboard";
    // }

    // @PostMapping("/goto-dashboard")
    // public String open(HttpServletRequest httpServletRequest) {
    // String username = httpServletRequest.getParameter("username");
    // String password = httpServletRequest.getParameter("password");
    // System.err.println("User Name : " + username + ", Password : " + password);
    // System.err.println("Goto Dashboard page...");
    // return "goto-dashboard";
    // }

    // @PostMapping("/goto-dashboard")
    // public void openGotoDashboardPage(@RequestParam ("username") String username,
    // @RequestParam ("password") String password) {

    // System.err.println("User Name : " + username + ", Password : " + password);
    // System.err.println("Goto Dashboard page...");
    // }

    // @PostMapping("/goto-dashboard")
    // public void openGotoDashboardPage(@ModelAttribute Login login) {
    // // loginService.openGotoDashboardPage(login);
    // String username = login.getUsername();
    // String password = login.getPassword();
    // System.err.println("User Name : " + username + ", Password : " + password);
    // System.err.println("Goto Dashboard page...");
    // // return "goto-dashboard";
    // }

    // @PostMapping("/goto-dashboard")
    // public void openGotoDashboardPage(@ModelAttribute Login login) {
    // loginService.openGotoDashboardPage(login);
    // }

    // @PostMapping ("/goto-dashboard")
    // public String openGotoDashboardPage(@ModelAttribute Login login) {
    // if (loginService.validateLogin(username, password) == true) { {
    // return "goto-dashboard";
    // }
    // return "login";
    // }

    // @PostMapping("/goto-dashboard")
    // public String openGotoDashboardPage(@ModelAttribute Login login) {

    //     if (loginService.openGotoDashboardPage(login) == true)
    //         return "goto-dashboard";

    //     return "login";
    // }

    @PostMapping("/goto-dashboard")
    public String login(
            @RequestParam String username,
            @RequestParam String password,
            Model model) {

        Login login = loginService.checkLogin(username, password);

        if (login != null) {
            return "redirect:/studentRegistration";
        }
        model.addAttribute("message", "Invalid Username or Password!");
        return "login";
    }
}
