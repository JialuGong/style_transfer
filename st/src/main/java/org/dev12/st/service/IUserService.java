package org.dev12.st.service;

import java.util.List;

import org.dev12.st.entity.User;

public interface IUserService {
	int addUser(String username,String password,String sex,int age);
    List<User>  queryByName(String username);
}
