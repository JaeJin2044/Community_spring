package com.project.community.user;

import org.apache.ibatis.annotations.Mapper;

import com.project.community.domain.UserDTO;
import com.project.community.domain.UserVO;

@Mapper
public interface UserMapper {

	int join(UserDTO p);
	UserVO selUser(UserDTO p);
}
