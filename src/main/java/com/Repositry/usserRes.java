package com.Repositry;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


import com.Model.User;
@Repository
public interface usserRes extends CrudRepository<User,Integer>{
	@Query(value="select * from User where username=?1 and password=?2",nativeQuery=true)
	public User Userfind(String username,String password);
}
