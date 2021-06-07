package com.road.graduate.controller;

import com.road.graduate.dao.ScheduleDao;
import com.road.graduate.entity.Schedule;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/schedule")
public class ScheduleController {
    @Autowired
    ScheduleDao scheduleDao;

    @PostMapping("/add")
    public String add(@RequestBody Schedule schedule){
        if (scheduleDao.save(schedule)!=null) {
            return "success";
        }else return "error";
    }

    @GetMapping("/get")
    public List<Schedule> findAll(){
        return scheduleDao.findAll();
    }

    @GetMapping("/getbyid/{id}")
    public Schedule findById(@PathVariable("id") Integer id){
        return scheduleDao.findById(id).get();
    }

    @DeleteMapping("/del/{id}")
    public String deleteSch(@PathVariable("id") Integer id){
        scheduleDao.deleteById(id);
        return "success";
    }
}
