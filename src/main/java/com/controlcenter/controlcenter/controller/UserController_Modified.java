package com.controlcenter.controlcenter.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
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
}
