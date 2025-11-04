package com.productivity.springboot.myfirstwebapp.todo;

import jakarta.validation.Valid;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDate;

@Controller
@SessionAttributes("username")
public class TodoControllerJpa {

    private final TodoRepository todoRepository;

    public TodoControllerJpa(TodoRepository todoRepository) {
        this.todoRepository = todoRepository;
    }

    ModelAndView mav = new ModelAndView();

    @RequestMapping("todos")
    public ModelAndView listAllTodos(ModelMap model) {
        String username = model.get("username").toString();
        var todos = todoRepository.findByUsername(username);
        model.put("todos", todos);
        mav.setViewName("listTodos");
        return mav;
    }

    @RequestMapping(value = "add-todo", method = RequestMethod.GET)
    public ModelAndView showNewTodo(ModelMap model) {
        Todo todo = new Todo(0, getLoggedInUsername(model), "", false, LocalDate.now());
        model.put("todo", todo);
        mav.setViewName("addTodo");
        return mav;
    }

    @RequestMapping(value = "add-todo", method = RequestMethod.POST)
    public ModelAndView addNewTodo(ModelMap model, @Valid Todo todo, BindingResult bindingResult) {
        if(bindingResult.hasErrors()) {
            return new ModelAndView("addTodo");
        }
        todo.setUsername(getLoggedInUsername(model));
        todoRepository.save(todo);
        // todoService.addTodo(getLoggedInUsername(model), todo.getDescription(), todo.getTargetDate(), todo.isDone());
        mav.setViewName("redirect:todos");
        return mav;
    }

    private static String getLoggedInUsername(ModelMap model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        return authentication.getName();
    }

    @RequestMapping("delete-todo")
    public ModelAndView deleteTodos(@RequestParam int id) {
        todoRepository.deleteById(id);
//        todoService.deleteById(id);
        mav.setViewName("redirect:todos");
        return mav;
    }

    @RequestMapping(value = "update-todo", method = RequestMethod.GET)
    public ModelAndView updateTodos(@RequestParam int id, ModelMap model) {
        Todo todo = todoRepository.findById(id).get();
        // Todo todo = todoService.updateById(id);
        model.addAttribute("todo", todo);
        mav.setViewName("addTodo");
        return mav;
    }

    @RequestMapping(value = "update-todo", method = RequestMethod.POST)
    public ModelAndView updateTodo(ModelMap model, @Valid Todo todo, BindingResult bindingResult) {
        if(bindingResult.hasErrors()) {
            return new ModelAndView("addTodo");
        }
        String username = getLoggedInUsername(model);
        todo.setUsername(username);
        todoRepository.save(todo);
        //todoService.updateTodo(todo);
        mav.setViewName("redirect:todos");
        return mav;
    }

}
