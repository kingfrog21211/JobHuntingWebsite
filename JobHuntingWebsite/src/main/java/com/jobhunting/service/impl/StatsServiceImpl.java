/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.service.impl;

import com.jobhunting.repository.StatsRepository;
import com.jobhunting.service.StatsService;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Asus
 */
@Service
public class StatsServiceImpl implements StatsService{
    @Autowired
    private StatsRepository statsRepository;

    @Override
    public List<Object[]> statsQuarter(Date fromDate, Date toDate) {
        return this.statsRepository.statsQuarter(fromDate, toDate);
    }

    @Override
    public List<Object[]> professionStats() {
        return this.statsRepository.professionStats();
    }
    
}
