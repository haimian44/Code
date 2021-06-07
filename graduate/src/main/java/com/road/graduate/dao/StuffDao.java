package com.road.graduate.dao;

import com.road.graduate.entity.Stuff;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StuffDao extends JpaRepository<Stuff,Integer> {
}
