package com.road.graduate.controller;

import com.road.graduate.dao.StuffDao;
import com.road.graduate.entity.Stuff;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/stuff")
public class StuffController {
    @Autowired
    StuffDao stuffDao;

    @GetMapping("/get")
    public List<Stuff> getAll(){
        return stuffDao.findAll();
    }

}
