package com.road.graduate.dao;

import com.road.graduate.entity.Stab;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface StabDao extends JpaRepository<Stab, Integer> {

    @Query(value = "select * from stable where stid = ?1",nativeQuery = true)
    List<Stab> findbystid(Integer stid);
}
