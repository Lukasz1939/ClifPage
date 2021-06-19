package pl.coderslab;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.format.FormatterRegistry;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalEntityManagerFactoryBean;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import pl.coderslab.converter.CustomerConverter;
import pl.coderslab.converter.MaterialConverter;
import pl.coderslab.converter.OrderConverter;
import pl.coderslab.converter.OrderItemConverter;

import javax.persistence.EntityManagerFactory;

@Configuration
@EnableWebMvc
@EnableJpaRepositories(basePackages = "pl.coderslab.repository")
@ComponentScan(basePackages = "pl.coderslab")
public class AppConfig implements WebMvcConfigurer {
    @Bean
    public ViewResolver viewResolver() {
        InternalResourceViewResolver viewResolver =
                new InternalResourceViewResolver();
        viewResolver.setPrefix("/WEB-INF/views/");
        viewResolver.setSuffix(".jsp");
        viewResolver.setContentType("text/html;charset=UTF-8");
        return viewResolver;
    }
    @Override
    public void configureDefaultServletHandling(
            DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }
    @Override
    public void addFormatters(FormatterRegistry registry) {
        registry.addConverter(getMaterialConverter());
        registry.addConverter(getOrderConverter());
        registry.addConverter(getOrderItemConverter());
        registry.addConverter(getCustomerConverter());
    }

    @Bean
    public MaterialConverter getMaterialConverter() {
        return new MaterialConverter();
    }
    @Bean
    public OrderConverter getOrderConverter() {
        return new OrderConverter();
    }
    @Bean
    public OrderItemConverter getOrderItemConverter() { return new OrderItemConverter();}
    @Bean
    public CustomerConverter getCustomerConverter() { return new CustomerConverter();}

    @Bean
    public LocalEntityManagerFactoryBean entityManagerFactory() {
        LocalEntityManagerFactoryBean entityManagerFactoryBean
                = new LocalEntityManagerFactoryBean();
        entityManagerFactoryBean.setPersistenceUnitName("PerUnit");
        return entityManagerFactoryBean;
    }

    @Bean
    public JpaTransactionManager transactionManager(EntityManagerFactory entityManagerFactory) {
        JpaTransactionManager jpaTransactionManager =
                new JpaTransactionManager(entityManagerFactory);
        return jpaTransactionManager;
    }

    @Bean
    public PasswordEncoder encoder() {
        return new BCryptPasswordEncoder();
    }
    @Bean
    public BCrypt bCrypt(){
        return new BCrypt();
    }
}
