package com.project.demo.controller;

import com.project.demo.entity.EventResults;
import com.project.demo.service.EventResultsService;
import com.project.demo.controller.base.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 *赛项成果：(EventResults)表控制层
 *
 */
@RestController
@RequestMapping("/event_results")
public class EventResultsController extends BaseController<EventResults,EventResultsService> {

    /**
     *赛项成果对象
     */
    @Autowired
    public EventResultsController(EventResultsService service) {
        setService(service);
    }

    @PostMapping("/add")
    @Transactional
    public Map<String, Object> add(HttpServletRequest request) throws IOException {
        Map<String,Object> paramMap = service.readBody(request.getReader());
        this.addMap(paramMap);
        return success(1);
    }

}
