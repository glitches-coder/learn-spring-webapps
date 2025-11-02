package com.productivity.springboot.myfirstwebapp.todo;

import jakarta.validation.Valid;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Service
public class TodoService {

    private static final List<Todo> todos = new ArrayList<>();
    private static int todosCounter = 0;
    static {
        todos.add(new Todo(++todosCounter, "Aditya", "Learn aws", false, LocalDate.now().plusYears(1)));
        todos.add(new Todo(++todosCounter, "Aditya", "Learn azure", false, LocalDate.now().plusYears(2)));
        todos.add(new Todo(++todosCounter, "Aditya", "Learn devops", false, LocalDate.now().plusYears(3)));
        todos.add(new Todo(++todosCounter, "Aditya", "Learn spring", false, LocalDate.now().plusYears(4)));
    }

    public List<Todo> findByUsername(String username) {
        return todos;
    }

    public void addTodo(String username, String description, LocalDate targetDate, Boolean done) {
        Todo todo = new Todo(++todosCounter,
                username,
                description,
                done,
                targetDate);
        todos.add(todo);
    }

    public void deleteById(int id) {
        todos.removeIf(t -> t.getId() == id);
    }

    public Todo updateById(int id) {
        return todos.stream().filter(t -> t.getId() == id).findFirst().get();
    }


    public void updateTodo(@Valid Todo todo) {
        System.out.println(todo.getId());
        deleteById(todo.getId());
        todos.add(todo);
    }
}
