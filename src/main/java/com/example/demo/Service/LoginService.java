package com.example.demo.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.LoginDAO;
import com.example.demo.model.Login;

@Service
public class LoginService {
    @Autowired
    private LoginDAO loginDAO;

    // public void openGotoDashboardPage(Login login) {
    // String username = login.getUsername();
    // String password = login.getPassword();
    // // System.err.println("Username -: " + username + ", Password -: " +
    // password);
    // Login login2 = loginDAO.findByUsernameAndPassword(username, password);

    // // System.out.println(login2);

    // if (login2 != null) {
    // System.out.println("Login Found...");
    // } else {
    // System.out.println("Login Not Found...");
    // }
    // // System.out.println(login2);

    // System.err.println("Goto Dashboard Page...");
    // }

    // public void openGotoDashboardPage(Login login) {
    // String username = login.getUsername();
    // String password = login.getPassword();
    // Login login2 = loginDAO.findByUsernameAndPassword(username, password);
    // if (login2 != null) {
    // return true;
    // } else {
    // return false;
    // }
    // }

    public boolean openGotoDashboardPage(Login login) {

        Login loginData = loginDAO.findByUsernameAndPassword(
                login.getUsername(),
                login.getPassword());

        if (loginData != null)
            return true;

        return false;
    }

    public Login checkLogin(String username, String password) {
        // TODO Auto-generated method stub
        return loginDAO.findByUsernameAndPassword(username, password);
    }
}
