package com.productivity.springboot.myfirstwebapp.todo;

import jakarta.validation.Valid;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDate;
import java.util.List;

@Controller
@SessionAttributes("username")
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

    @RequestMapping(value = "add-todo", method = RequestMethod.GET)
    public ModelAndView showNewTodo(ModelMap model) {
        Todo todo = new Todo(0, (String) model.get("username"), "", false, LocalDate.now());
        model.put("todo", todo);
        mav.setViewName("addTodo");
        return mav;
    }

    @RequestMapping(value = "add-todo", method = RequestMethod.POST)
    public ModelAndView addNewTodo(ModelMap model, @Valid Todo todo, BindingResult bindingResult) {
        if(bindingResult.hasErrors()) {
            return new ModelAndView("addTodo");
        }
        todoService.addTodo((String) model.get("username"), todo.getDescription(), todo.getTargetDate(), false);
        mav.setViewName("redirect:todos");
        return mav;
    }

    @RequestMapping("delete-todo")
    public ModelAndView deleteTodos(@RequestParam int id) {
        todoService.deleteById(id);
        mav.setViewName("redirect:todos");
        return mav;
    }

    @RequestMapping(value = "update-todo", method = RequestMethod.GET)
    public ModelAndView updateTodos(@RequestParam int id, ModelMap model) {
        Todo todo = todoService.updateById(id);
        model.addAttribute("todo", todo);
        mav.setViewName("addTodo");
        return mav;
    }

    @RequestMapping(value = "update-todo", method = RequestMethod.POST)
    public ModelAndView updateTodo(ModelMap model, @Valid Todo todo, BindingResult bindingResult) {
        if(bindingResult.hasErrors()) {
            return new ModelAndView("addTodo");
        }
        String username = (String) model.get("username");
        todo.setUsername(username);
        todoService.updateTodo(todo);
        mav.setViewName("redirect:todos");
        return mav;
    }

}
