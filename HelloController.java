package com.example.springboot;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
	static int  counter=0;
	@GetMapping("/")
	public String index() {
		return "hello-world-" + counter++;
	}

}
