package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

// Hada houwa l'application dyalna dial Spring Boot
// Kandiro fih API basit bach nwerriw belli l'ansible khedam mezian
@SpringBootApplication
@RestController
public class DemoApplication {

    // L'point d'entree dial l'application
    public static void main(String[] args) {
        SpringApplication.run(DemoApplication.class, args);
    }

    // Hada houwa l'endpoint li kayredd HTML page
    @GetMapping("/")
    public String hello() {
        return "Hello, World! Projet fait pas Mohammed Amine Chibani";
    }
} 