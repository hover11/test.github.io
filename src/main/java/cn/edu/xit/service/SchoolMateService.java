package cn.edu.xit.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.xit.po.Admit;
import cn.edu.xit.po.SchoolMate;

public interface SchoolMateService {
	public Admit findAdmit(@Param("userid") String userid, @Param("password") String password);
	public SchoolMate findUserByUseridandPwd(@Param("userid") String userid, @Param("password") String password);
	public int deleteUserById(String userid);
	public SchoolMate findUserByUserId(String userid);
	public int addUser(SchoolMate schoolmate);
	public List<SchoolMate> findUserByManyCondition(@Param("userid") String userid, @Param("work") String work, @Param("graduateschool") String graduateschool);
	public int updateUser(SchoolMate schoolmate);
	public List<SchoolMate> findAllUser();

}
