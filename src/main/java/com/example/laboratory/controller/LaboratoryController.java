package com.example.laboratory.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LaboratoryController {
    @GetMapping("/")
    @ResponseBody
    public String home() {
        return "Home Page";
    }

    @GetMapping("/healthcheck")
    @ResponseBody
    public String health() {
        return "Hello !";
    }
}