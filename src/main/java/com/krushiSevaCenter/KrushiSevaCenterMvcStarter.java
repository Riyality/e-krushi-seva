package com.krushiSevaCenter;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan( "com.krushiSevaCenter" )
@SpringBootApplication
public class KrushiSevaCenterMvcStarter {

	public static void main( String[] args ) {
		SpringApplication.run( KrushiSevaCenterMvcStarter.class, args);
		
	}
}            