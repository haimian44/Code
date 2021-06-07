package com.road.graduate.controller;


import com.road.graduate.dao.StabDao;
import com.road.graduate.entity.Stab;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/stab")
public class StabController {

    @Autowired
    StabDao stabDao;

    @GetMapping("/get/{stid}")
    public List<Stab> findALl(@PathVariable("stid") Integer stid){
        return stabDao.findbystid(stid);
    }

}
