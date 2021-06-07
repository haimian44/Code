package com.road.graduate.dao;

import com.road.graduate.entity.News;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface NewsDao extends JpaRepository<News,Integer> {

    @Query(value ="select * from news where mclass = ?1",nativeQuery = true)
    List<News> findByClass(Integer mclass);
}
