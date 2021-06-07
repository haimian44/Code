package com.road.graduate.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Date;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Schedule {
    @Id
    private int rid;
    private String rtitle;
    private String rbody;
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date rstart;
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date rend;
    private int progress;
}
