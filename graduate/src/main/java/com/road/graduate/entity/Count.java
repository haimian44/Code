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
@Table(name = "count")
public class Count {
    @Id
    private int cid;
    private String cclass;
    private String czhou;
    private String cmember;
    private int ctid;

}
