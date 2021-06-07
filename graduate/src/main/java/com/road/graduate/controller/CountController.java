package com.road.graduate.controller;

import com.road.graduate.dao.CountDao;
import com.road.graduate.entity.Count;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/count")
public class CountController {

    @Autowired
    CountDao countDao;

    @GetMapping("/get")
    public List<Count> getAll(){
        return countDao.findAll();
    }
}
