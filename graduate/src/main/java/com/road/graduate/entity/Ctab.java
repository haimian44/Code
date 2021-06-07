package com.road.graduate.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "ctable")
public class Ctab {

    @Id
    private int cid;
    private String cname;
    private String ccount;
    private int cnumber;
    private int cprice;
    private int call;
    private int ctid;
}
