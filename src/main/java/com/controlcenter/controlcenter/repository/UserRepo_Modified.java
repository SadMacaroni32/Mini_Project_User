package com.controlcenter.controlcenter.repository;

import java.util.Optional;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.controlcenter.controlcenter.model.UserEntity_Modified;

public interface UserRepo_Modified extends JpaRepository<UserEntity_Modified, Long> {

    List<UserEntity_Modified> findAll(); // Method to find all courses

    Optional<UserEntity_Modified> findById(Long emp_id); // Method to find a course by its ID

}
