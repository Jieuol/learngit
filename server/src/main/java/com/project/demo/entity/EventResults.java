package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 *赛项成果：(EventResults)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "EventResults")
public class EventResults implements Serializable {

    //EventResults编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "event_results_id")
    private Integer event_results_id;
   // 赛项名称
   @Basic
    private String event_name;
   // 赛项类型
   @Basic
    private String event_type;
   // 赛项日期
   @Basic
    private Timestamp event_date;
   // 备注
   @Basic
    private String remarks;
   // 赛程成果
   @Basic
    private String schedule_results;

    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
