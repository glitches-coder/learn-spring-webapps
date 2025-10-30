package com.productivity.springboot.myfirstwebapp.login;


import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {

    public Boolean authenticate(String username, String password) {
        boolean isValidUsername = username.equals("Aditya");
        boolean isValidPassword = password.equals("123456");
        return isValidUsername && isValidPassword;
    }

}
