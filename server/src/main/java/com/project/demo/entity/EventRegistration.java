package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 *赛项报名：(EventRegistration)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "EventRegistration")
public class EventRegistration implements Serializable {

    //EventRegistration编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "event_registration_id")
    private Integer event_registration_id;
   // 报名人
   @Basic
    private Integer applicant;
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
    // 审核状态
    @Basic
    private String examine_state;
    // 审核回复
    @Basic
    private String examine_reply;

    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
