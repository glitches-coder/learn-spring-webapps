package com.productivity.springboot.myfirstwebapp.todo;

import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TodoController {

    private final TodoService todoService;

    public TodoController(TodoService todoService) {
        this.todoService = todoService;
    }

    ModelAndView mav = new ModelAndView();

    @RequestMapping("todos")
    public ModelAndView listAllTodos(ModelMap model) {
        var todos = todoService.findByUsername("Aditya");
        model.put("todos", todos);
        mav.setViewName("listTodos");
        return mav;
    }

}
