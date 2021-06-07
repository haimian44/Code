package com.road.graduate.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "news")
public class News {
    @Id
    private int mid;
    private String mname;
    private int mclass;
    private String mpart;
    private String mauthor;
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date mdate;
    @Lob
    @Basic
    @Column(columnDefinition = "text")
    private String mcontent;

}
