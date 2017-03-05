package pl.mateuszwarzyc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Coffee13.
 */
@Controller
public class LoginController {

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String getLoginPage(ModelMap model) {
        model.addAttribute("appName", "SpeechRecognizer");
        model.addAttribute("author", "Mateusz Warzyc");

        return "login";
    }

}
