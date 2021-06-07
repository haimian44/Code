package com.road.graduate.dao;

import com.road.graduate.entity.Schedule;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ScheduleDao extends JpaRepository<Schedule,Integer> {
}
