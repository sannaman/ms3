package com.ms.ms3;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/ms3")
public class GuestProfileWebservice {

	@GetMapping("/guest/response")
	public String getProfile() {

		return new String("Microservice 3!!");
	}

}
