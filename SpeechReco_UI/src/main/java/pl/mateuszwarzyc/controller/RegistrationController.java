package pl.mateuszwarzyc.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.WebRequest;
import pl.mateuszwarzyc.constant.ViewPathMapping;
import pl.mateuszwarzyc.dto.UserDto;

/**
 * Created by Coffee13.
 */
@Controller
public class RegistrationController {

    private static final Logger LOGGER = LoggerFactory.getLogger(RegistrationController.class);

    /**
     * Renders the register mew user page
     * @param model
     * @return
     */
    @RequestMapping(value = ViewPathMapping.REGISTRATION_URI, method = RequestMethod.GET)
    public String getRegistrationPage(Model model) {
        LOGGER.info("Registration page requested");
        model.addAttribute("user", new UserDto());
        return "register";
    }

    /**
     * Processes the new user registration form
     * @param model
     * @return
     */
    @RequestMapping(value = ViewPathMapping.REGISTRATION_URI, method = RequestMethod.POST)
    public String registerNewUser(Model model) {
        LOGGER.info("Request with register form recived");

        return "index";
    }

}
