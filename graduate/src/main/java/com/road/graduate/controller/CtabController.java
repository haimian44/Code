package com.road.graduate.controller;

import com.road.graduate.dao.CtabDao;
import com.road.graduate.entity.Ctab;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/ctab")
public class CtabController {
    @Autowired
    CtabDao ctabDao;

    @GetMapping("/get/{ctid}")
    public List<Ctab> findbyctid(@PathVariable("ctid") Integer ctid){
        return ctabDao.findByctid(ctid);
    }
}
