package com.controlcenter.controlcenter.repository;

import java.util.Optional;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.controlcenter.controlcenter.model.UserEntity_Modified;

public interface UserRepo_Modified extends JpaRepository<UserEntity_Modified, Long> {

    List<UserEntity_Modified> findAll(); // Method to find all user data

    Optional<UserEntity_Modified> findById(Long emp_id); // Method to find a user data by its ID

    @Query("SELECT DISTINCT c FROM Course c JOIN c.chapter ch WHERE ch.chapter_id = :chapter_id")
    List<UserEntity_Modified> findByUserId(@Param("emp_id") Long emp_id);
}
