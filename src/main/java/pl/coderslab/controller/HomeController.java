package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pl.coderslab.entity.Material;
import pl.coderslab.repository.MaterialRepository;

import java.util.List;

@Controller
public class HomeController {
    private MaterialRepository materialRepository;

    public HomeController(MaterialRepository materialRepository){
        this.materialRepository = materialRepository;
    }

    @RequestMapping("/home")
    public String home(){
        return "index";
    }

    @ModelAttribute("materials")
    public List<Material> materials(){
        return materialRepository.findAll();
    }

}
