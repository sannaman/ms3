package com.ms.ms3;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/ms3")
public class SampleWebservice {

	@GetMapping("/guest/response")
	public String getGuestAddress() {

		return "Microservice 3!!"+"Version2";
	}

}
