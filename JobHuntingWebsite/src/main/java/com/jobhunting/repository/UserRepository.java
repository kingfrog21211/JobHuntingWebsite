/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobhunting.repository;

import com.jobhunting.pojo.User;
import java.util.List;

/**
 *
 * @author Asus
 */
public interface UserRepository {
    User getUserByUsername(String username);
    
    boolean addUser(User user);
    List<User> getUsers(String username);
}
