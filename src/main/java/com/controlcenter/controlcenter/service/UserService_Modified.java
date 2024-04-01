package com.controlcenter.controlcenter.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;

import com.controlcenter.controlcenter.repository.UserRepo_Modified;
import com.controlcenter.controlcenter.exception.UserNotFoundException;
import com.controlcenter.controlcenter.model.UserEntity_Modified;

@Service
public class UserService_Modified {
    @Autowired
    private UserRepo_Modified userRepo;

    public List<UserEntity_Modified> getAllData() {
        return userRepo.findAll();
    }

    public UserEntity_Modified updateData(@RequestBody UserEntity_Modified newData, @PathVariable Long emp_id) {
        return userRepo.findById(emp_id)
        .map(userEntity -> {
            userEntity.setFname(newData.getFname());
            userEntity.setLname(newData.getLname());
            userEntity.setMname(newData.getMname());
            userEntity.setEmail(newData.getEmail());
            return userRepo.save(userEntity);
        }).orElseThrow(() -> new UserNotFoundException("User with ID" + emp_id + "not found."));
    }
}
