package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HaiController {
    @GetMapping("/hello")
    public String extraController() {
        return "ok";
    }

    @GetMapping("/hey")
    public String hey() {
        return "i am good";
    }
}
