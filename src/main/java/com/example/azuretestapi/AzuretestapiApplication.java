package com.example.azuretestapi;

import com.fasterxml.jackson.databind.util.JSONPObject;
import org.json.JSONObject;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@SpringBootApplication
@RestController
public class AzuretestapiApplication {

    @CrossOrigin
    @GetMapping("/greeting")
    public Map<String, String> greeting(){
        HashMap<String, String> map = new HashMap<>();
        // this is a comment
        map.put("greeting", "holla");
        return map;
    }

    public static void main(String[] args) {
        SpringApplication.run(AzuretestapiApplication.class, args);
    }

}
