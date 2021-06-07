package com.road.graduate.controller;

import com.road.graduate.dao.NewsDao;
import com.road.graduate.entity.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/news")
public class NewsController {
    @Autowired
    private NewsDao newsDao;

    @GetMapping("/showbyclass/{mclass}")
    public List<News> showclass(@PathVariable("mclass") Integer mclass) {
        return newsDao.findByClass(mclass);
    }

    @GetMapping("/showbyid/{mid}")
    public News showbyid(@PathVariable("mid") Integer mid) {
        return newsDao.findById(mid).get();
    }

    @GetMapping("/show")
    public List<News> shownews() {
        return newsDao.findAll();
    }

    @PostMapping("/add")
    public String addnews(@RequestBody News news){
        News news1 = newsDao.save(news);
        if(news1!=null){
            return "success";
        }
        else return "error";
    }

    @DeleteMapping("/del/{mid}")
    public String deltenews(@PathVariable("mid") Integer mid){
        newsDao.deleteById(mid);
        return "success";
    }

}
