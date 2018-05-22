package ru.kpfu.itis.entertainmentadviser.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import ru.kpfu.itis.entertainmentadviser.dao.EventDao;
import ru.kpfu.itis.entertainmentadviser.dao.TagDao;
import ru.kpfu.itis.entertainmentadviser.model.CurrentUser;
import ru.kpfu.itis.entertainmentadviser.model.Event;
import ru.kpfu.itis.entertainmentadviser.model.User;

import java.util.List;

@Controller
public class EventController {
    @Autowired
    EventDao eventDao;
    @Autowired
    TagDao tagDao;

    @GetMapping("/events")
    String getAllevents(Model model){
        List<Event> EventList = eventDao.findall();
        model.addAttribute("getAllevents", EventList);
        return "events";
    }

    @GetMapping("/myevents")
    String getMyEvents(Model model, Authentication authentication){
        CurrentUser currentUser = (CurrentUser) authentication.getPrincipal();
        User user = currentUser.getUser();
        List<Event> eventList = eventDao.findAllEventsForUser(user);
        model.addAttribute("getAllevents", eventList);
        return "events";
    }

    @GetMapping("/events/{id}")
    String getAllinfoaboutEvent(Model model, @PathVariable Long id) {
        List<Event> eventsList = eventDao.AllInfoAboutEventbyid(id);
        model.addAttribute("getEventById", eventsList);
        model.addAttribute("tags", tagDao.findUserTagsByEvent(eventsList.get(0)));
        return "eventsByid";
    }
}

