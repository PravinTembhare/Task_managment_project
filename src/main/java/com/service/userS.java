package com.service;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Model.Task;
import com.Model.User;
import com.Repositry.Taskres;
import com.Repositry.usserRes;
import com.ServiceI.Usertask;

@Service
public class userS implements Usertask{
	    @Autowired
	    usserRes r;
	    @Autowired
	    Taskres T;

	
		public void Usersave(User c) {
			// TODO Auto-generated method stub
			r.save(c);
		}


		@Override
		public User Userfind(String username, String password) {
			User u=r.Userfind(username, password);
			if(u!=null) {
				return u;
				
			}else {
				return null;
			}
		}


		@Override
		public void AddTask(Task t,int u) {
			User u1=r.findById(u).get();
			u1.getSl().add(t);
			r.save(u1);
		
	
		}


		@Override
		public Set<Task> getSet(int uid) {
			// TODO Auto-generated method stub
			User u1=r.findById(uid).get();
			
			Set<Task> s=u1.getSl();
			
			
			return s;
		}


		@Override
		public void Remove(int tid,int uid) {
			// TODO Auto-generated method stub
			User u=r.findById(uid).get();
			Task t=null;
			for(Task sl:u.getSl()) {
				if(sl.getTid()==tid) {
					t=sl;
				}
			}
			
			u.getSl().remove(t);
			T.delete(t);
			r.save(u);		
			
		}


		@Override
		public Task Update(int tid) {
			// TODO Auto-generated method stub
			Task t=T.findById(tid).get();
			return t;
		}


		@Override
		public void TaskUpdate(Task t) {
			// TODO Auto-generated method stub
			T.save(t);
		}
         
      
		

	
	

}
