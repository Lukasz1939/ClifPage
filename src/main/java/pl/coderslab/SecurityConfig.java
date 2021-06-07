package pl.coderslab;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import pl.coderslab.Services.SpringDataUserDetailsService;


@Configuration
@EnableWebSecurity
@ComponentScan(basePackages = "pl.coderslab")
@EnableGlobalMethodSecurity(securedEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    @Override
    public void configure(AuthenticationManagerBuilder auth)throws Exception {
        auth.authenticationProvider(authProvider());

    }
    @Override
    public void configure(HttpSecurity http)throws Exception {
        http.authorizeRequests()
//                .antMatchers("/**").hasAnyRole("USER","ADMIN")
//                .antMatchers("/**").hasAnyAuthority("ROLE_ADMIN")
                .antMatchers("/sec").authenticated()
                .and().formLogin()
                .loginPage("/login/login")
                .defaultSuccessUrl("/order/orderList")
                .failureUrl("/403")
                .and().logout().logoutSuccessUrl("/")
                .permitAll()
                .and().exceptionHandling().accessDeniedPage("/403");

    }
    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
    @Bean
    public SpringDataUserDetailsService customUserDetailsService() {
        return new SpringDataUserDetailsService();
    }
    @Bean
    public DaoAuthenticationProvider authProvider() {
        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
        authProvider.setUserDetailsService(customUserDetailsService());
        authProvider.setPasswordEncoder(passwordEncoder());
        return authProvider;
    }
//    @Bean
//    public BCryptPasswordEncoder passwordEncoder() {
//        return new BCryptPasswordEncoder();
//    }
//
//    @Bean
//    public SpringDataUserDetailsService customUserDetailsService() {
//        return new SpringDataUserDetailsService();
//    }
}