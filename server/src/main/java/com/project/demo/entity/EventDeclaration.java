package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 *赛项申报：(EventDeclaration)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "EventDeclaration")
public class EventDeclaration implements Serializable {

    //EventDeclaration编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "event_declaration_id")
    private Integer event_declaration_id;
   // 申报人
   @Basic
    private Integer declarant;
   // 赛项名称
   @Basic
    private String event_name;
   // 赛项类型
   @Basic
    private String event_type;
   // 参与人数
   @Basic
    private String number_of_participants;
   // 赛项日期
   @Basic
    private Timestamp event_date;
   // 申报人联系方式
   @Basic
    private String contact_information_of_the_applicant;
   // 赛项介绍
   @Basic
    private String event_introduction;
   // 赛项规则
   @Basic
    private String event_rules;
   // 参与条件
   @Basic
    private String participation_conditions;
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
