package com.main.backendCarrito;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {
    "com.main.backendCarrito",
    "com.restaurant.backendCarrito.ws.rest"
})
public class BackendCarritoApplication {

	public static void main(String[] args) {
		SpringApplication.run(BackendCarritoApplication.class, args);
	}

}
