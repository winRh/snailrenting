package com.alien.mapper;

import com.alien.entity.SnailLocation;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface SnailLocationMapper {

    List<SnailLocation> list();

    void insert(SnailLocation record);

    int updateByPrimaryKeySelective(SnailLocation record);

    int updateByPrimaryKey(SnailLocation record);
}