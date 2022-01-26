/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.service;

import java.util.Date;
import java.util.List;

/**
 *
 * @author Asus
 */
public interface StatsService {
    public List<Object[]> statsQuarter(Date fromDate, Date toDate);
}
