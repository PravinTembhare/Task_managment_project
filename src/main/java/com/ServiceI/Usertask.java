package com.ServiceI;

import java.util.List;
import java.util.Set;

import com.Model.Task;
import com.Model.User;

public interface Usertask {
public void Usersave(User u);
public User Userfind(String username,String password);
public void AddTask(Task t,int u);
public Set<Task> getSet(int uid);
public void Remove(int tid,int uid);
public Task Update(int tid);
public void TaskUpdate(Task t);
}
