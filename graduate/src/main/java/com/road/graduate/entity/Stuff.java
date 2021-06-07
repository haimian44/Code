package com.road.graduate.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "stuff")
public class Stuff {
    @Id
    private int sid;
    private String sclass;
    private String sdetail;
    private String smember;
    private int stid;
}
