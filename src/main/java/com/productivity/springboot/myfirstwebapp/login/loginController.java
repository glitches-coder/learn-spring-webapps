package com.productivity.springboot.myfirstwebapp.login;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@RestController
@SessionAttributes("username")
public class loginController {

    final Logger logger = LoggerFactory.getLogger(getClass());

    final AuthenticationService authenticationService;

    public loginController(AuthenticationService authenticationService) {
        this.authenticationService = authenticationService;
    }

    @RequestMapping(value = "login", method = RequestMethod.GET)
    public ModelAndView loginPage() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("loginJsp");
        return mav;
    }

    @RequestMapping(value = "login", method = RequestMethod.POST)
    public ModelAndView goToSayHello(@RequestParam String username, @RequestParam String password, ModelMap model) {
        model.put("username", username);
        model.put("password", password);
        ModelAndView mav = new ModelAndView();
        if (authenticationService.authenticate(username, password)) {
            mav.setViewName("sayHello");
            return mav;
        }
        model.put("message", "Authentication failed");
        mav.setViewName("loginJsp");
        return mav;
    }

}
