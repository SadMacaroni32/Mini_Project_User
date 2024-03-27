package com.controlcenter.controlcenter.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.controlcenter.controlcenter.repository.UserRepo_Modified;
import com.controlcenter.controlcenter.model.UserEntity_Modified;

@Service
public class UserService_Modified {
    @Autowired
    private UserRepo_Modified userRepo;

    public List<UserEntity_Modified> getAllData() {
        return userRepo.findAll();
    }

}
