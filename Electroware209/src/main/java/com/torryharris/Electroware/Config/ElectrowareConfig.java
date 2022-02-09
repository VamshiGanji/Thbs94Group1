package com.torryharris.Electroware.Config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages={"com.torryharris.Electroware.Controller","com.torryharris.Electroware.Config",
		"com.torryharris.Electroware.mvcdemo"})
public class ElectrowareConfig extends WebMvcConfigurerAdapter{

}
