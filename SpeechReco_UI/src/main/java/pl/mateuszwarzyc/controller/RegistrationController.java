package pl.mateuszwarzyc.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.mateuszwarzyc.constant.ViewPathMapping;

/**
 * Created by Coffee13.
 */
@Controller
public class RegistrationController {

    private static final Logger LOGGER = LoggerFactory.getLogger(RegistrationController.class);

    @RequestMapping(value = ViewPathMapping.REGISTRATION_URI, method = RequestMethod.GET)
    public String getRegistrationPage(Model model) {
        LOGGER.info("Registration page requested");

        return "register";
    }

}
