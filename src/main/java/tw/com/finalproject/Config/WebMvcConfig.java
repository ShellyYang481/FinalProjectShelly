package tw.com.finalproject.Config;

import org.springframework.context.annotation.Bean;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

public class WebMvcConfig implements WebMvcConfigurer {

	@Override
	public void addViewControllers(ViewControllerRegistry registry) {
		registry.addViewController("/").setViewName("index");
		
	}

	@Bean
	public CommonsMultipartResolver multipartResolver() {
		CommonsMultipartResolver cmpartResolver = new CommonsMultipartResolver();
		cmpartResolver.setDefaultEncoding("UTF-8");
		return cmpartResolver;
	}

}
