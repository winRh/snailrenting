package com.alien.entity;

import com.alien.common.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Created by alien on 2020/3/20 0020 18:18
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SnailInform extends BaseEntity<SnailInform> {

    private Integer userId;

    private Integer type;

    private Integer pushBy;

    private Integer pushState;

    private Integer state;

    private String name;

    private String content;
}

