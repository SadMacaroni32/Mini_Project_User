package com.controlcenter.controlcenter.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.controlcenter.controlcenter.model.UserEntity_Modified;
import com.controlcenter.controlcenter.repository.UserRepo_Modified;
import com.controlcenter.controlcenter.service.UserService_Modified;

@RestController
@RequestMapping("UserModified/api")
public class UserController_Modified {
    @Autowired
    private UserService_Modified userService;

    @Autowired
    UserRepo_Modified userRepo;

    @GetMapping("/alluser")
    List<UserEntity_Modified> getAllData() {
        return userService.getAllData();
    }

    @PutMapping("/edituser")
    UserEntity_Modified updateData(@RequestBody UserEntity_Modified newData, @PathVariable Long emp_id) {
        return userService.updateData(newData, emp_id);
    }
}
