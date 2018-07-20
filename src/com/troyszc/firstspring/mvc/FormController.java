package com.troyszc.firstspring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/form")
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

    // a controller to read form data and add data to the model
    @RequestMapping("/processFormVersionTwo")
    public String shoutName (HttpServletRequest request, Model model) {
        String theName = request.getParameter("studentName");
        theName = theName.toUpperCase();
        String result = "Yo " + theName + " !";
        model.addAttribute("message", result);
        return "pForm";
    }

    @RequestMapping("/processFormVersionThree")
    public String processFormVersionThree (@RequestParam("studentName") String theName, Model model) {
        theName = theName.toUpperCase();
        String result = "Hey " + theName + " !";
        model.addAttribute("message", result);
        return "pForm";
    }
}
