package pl.mateuszwarzyc.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.mateuszwarzyc.constant.ViewPathMapping;

/**
 * Created by Coffee13.
 */
@Controller
public class LoginController {

    private static final Logger LOGGER = LoggerFactory.getLogger(LoginController.class);

    /**
     * Renders login page
     *
     * @param model
     * @return
     */
    @RequestMapping(value = ViewPathMapping.LOGGING_URI, method = RequestMethod.GET)
    public String getLoginPage(ModelMap model) {
        LOGGER.info("Login page requested");

        return "login";
    }
}
