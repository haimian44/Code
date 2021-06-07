package com.road.graduate.dao;

import com.road.graduate.entity.Ctab;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CtabDao extends JpaRepository<Ctab,Integer> {

    @Query(value = "select * from ctable where ctid = ?1",nativeQuery = true)
    List<Ctab> findByctid(Integer ctid);
}
