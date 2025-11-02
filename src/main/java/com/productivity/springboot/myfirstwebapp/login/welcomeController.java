package com.productivity.springboot.myfirstwebapp.login;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@RestController
@SessionAttributes("username")
public class welcomeController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView goToWelcomePage(ModelMap model) {
        model.put("username", getLoggedinUsername());
        ModelAndView mav = new ModelAndView();
        mav.setViewName("sayHello");
        return mav;
    }

    private String getLoggedinUsername() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        return authentication.getName();
    }

}
