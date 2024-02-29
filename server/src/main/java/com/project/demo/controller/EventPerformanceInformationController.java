package com.project.demo.controller;

import com.project.demo.entity.EventPerformanceInformation;
import com.project.demo.service.EventPerformanceInformationService;
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
 *赛项成绩信息：(EventPerformanceInformation)表控制层
 *
 */
@RestController
@RequestMapping("/event_performance_information")
public class EventPerformanceInformationController extends BaseController<EventPerformanceInformation,EventPerformanceInformationService> {

    /**
     *赛项成绩信息对象
     */
    @Autowired
    public EventPerformanceInformationController(EventPerformanceInformationService service) {
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
