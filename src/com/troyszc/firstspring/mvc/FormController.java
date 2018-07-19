package com.troyszc.firstspring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FormController {

    // a controller to show initial form
    @RequestMapping("/showForm")
    public String showForm() {
        return "form";
    }

    // a controller to process the form
    @RequestMapping("/processForm")
    public String processForm() {
        return "pForm";
    }
}
