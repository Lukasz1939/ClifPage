package pl.coderslab.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pl.coderslab.Services.CurrentUser;
import pl.coderslab.entity.Customer;
import pl.coderslab.entity.Material;
import pl.coderslab.repository.MaterialRepository;

import java.util.List;

@Controller
public class HomeController {
    private MaterialRepository materialRepository;

    public HomeController(MaterialRepository materialRepository){
        this.materialRepository = materialRepository;
    }

    @RequestMapping("")
    public String home(){
        return "index";
    }


    @GetMapping("/sec")
    @ResponseBody
    public String userInfo(@AuthenticationPrincipal CurrentUser customUser) {
        Customer user = customUser.getUser();
        return "You are logged as " + user.getLogin();
    }

    @GetMapping("/403")
    public String noAuth(){
        return "403";
    }


    @ModelAttribute("materials")
    public List<Material> materials(){
        return materialRepository.findAll();
    }

    @GetMapping("/admin")
    @ResponseBody
    public String userInfo(@AuthenticationPrincipal UserDetails customUser) {
        return "You are logged as " + customUser;
    }

}
