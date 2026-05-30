package com.Repositry;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Model.Task;

public interface Taskres extends JpaRepository<Task, Integer>{

}
