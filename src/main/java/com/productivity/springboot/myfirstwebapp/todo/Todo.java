package com.productivity.springboot.myfirstwebapp.todo;

import jakarta.validation.constraints.Size;
import lombok.Data;

import java.time.LocalDate;

@Data
public class Todo {

    public Todo(int id, String username, String description, boolean done, LocalDate targetDate) {
        this.id = id;
        this.username = username;
        this.description = description;
        this.done = done;
        this.targetDate = targetDate;
    }

    private int id;
    private String username;
    @Size(min = 10, message = "Enter at least 10 characters")
    private String description;
    private boolean done;
    private LocalDate targetDate;


}
