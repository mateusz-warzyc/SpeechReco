package pl.mateuszwarzyc.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Coffee13.
 */
@Controller
public class IndexController {

    private static final Logger LOGGER = LoggerFactory.getLogger(IndexController.class);

    /**
     * Return index page of the application
     * @param model
     * @return view file name
     */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getIndex(Model model) {
        LOGGER.debug("Index page request received");

        model.addAttribute("appName", "SpeechRecognizer");
        model.addAttribute("author", "Mateusz Warzyc");

        return "index";
    }
}
