package org.dev12.st.service.impl;

import java.util.List;

import org.dev12.st.dao.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.dev12.st.entity.User;
import org.dev12.st.service.IUserService;

@Service
public class UserServiceImpl implements IUserService{
	@Autowired
    private UserRepository userRepository;

    public int addUser(String username,String password,String sex,int age) {
        User user = new User(username, password, sex,age);

        userRepository.save(user);
        return 1;
    }
 
    public List<User> queryByName(String username){
        List<User> userList = userRepository.findByUsername(username);
        return userList;
    }
}
