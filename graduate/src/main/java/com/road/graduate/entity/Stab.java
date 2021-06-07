package com.road.graduate.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name = "stable")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Stab {
    @Id
    private int sid;
    private int stid;
    private String sname;
    private String sfact;
    private String sclass;
    private String sdan;
    private int snum;
    private String scar;
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date stime;
    private String sload;
}
