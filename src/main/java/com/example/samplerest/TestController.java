package com.example.samplerest;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
@RequestMapping("/api")
public class TestController {

@GetMapping("/hello-world")
public Object helloWorld() {
return "Hello World hi pagal";
}

}


