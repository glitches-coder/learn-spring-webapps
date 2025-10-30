package com.productivity.springboot.myfirstwebapp.todo;

import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Service
public class TodoService {

    private static final List<Todo> todos = new ArrayList<>();
    static {
        todos.add(new Todo(1, "Aditya", "Learn aws", false, LocalDate.now().plusYears(1)));
        todos.add(new Todo(1, "Aditya", "Learn azure", false, LocalDate.now().plusYears(2)));
        todos.add(new Todo(1, "Aditya", "Learn devops", false, LocalDate.now().plusYears(3)));
        todos.add(new Todo(1, "Aditya", "Learn spring", false, LocalDate.now().plusYears(4)));
    }

    public List<Todo> findByUsername(String username) {
        return todos;
    }

}
