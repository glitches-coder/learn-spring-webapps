package com.productivity.springboot.myfirstwebapp.hello;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class SayHelloController {

    @RequestMapping("say-hello")
    public String sayHello() {
        return "Hello world, this is a return from java spring";
    }

    @RequestMapping("say-hello-jsp")
    public ModelAndView sayHelloJsp() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("sayHello");
        return mav;

    }

}
