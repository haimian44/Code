package com.road.graduate.dao;

import com.road.graduate.entity.Count;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CountDao extends JpaRepository<Count,Integer> {

}
