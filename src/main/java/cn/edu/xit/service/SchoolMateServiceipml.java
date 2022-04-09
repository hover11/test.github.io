package cn.edu.xit.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.xit.mapper.SchoolMateMapper;
import cn.edu.xit.po.Admit;
import cn.edu.xit.po.SchoolMate;
//这边的service注解不能忘记
@Service
public class SchoolMateServiceipml implements SchoolMateService{
    @Autowired
    private SchoolMateMapper schoolmatemapper;
    
	public SchoolMateMapper getSchoolmatemapper() {
		return schoolmatemapper;
	}

	public void setSchoolmatemapper(SchoolMateMapper schoolmatemapper) {
		this.schoolmatemapper = schoolmatemapper;
	}


	@Override
	public int deleteUserById(String id) {
		// TODO Auto-generated method stub
		return schoolmatemapper.deleteUserById(id);
	}

	@Override
	public int addUser(SchoolMate schoolmate) {
		// TODO Auto-generated method stub
		return schoolmatemapper.addUser(schoolmate);
	}

	@Override
	public List<SchoolMate> findUserByManyCondition(@Param("userid") String userid,@Param("work") String work,@Param("graduateschool") String graduateschool)
	{	// TODO Auto-generated method stub
		return schoolmatemapper.findUserByManyCondition(userid, work, graduateschool);
	}

	@Override
	public int updateUser(SchoolMate schoolmate) {
		// TODO Auto-generated method stub
		return schoolmatemapper.updateUser(schoolmate);
	}

	@Override
	public List<SchoolMate> findAllUser() {
		// TODO Auto-generated method stub
		return schoolmatemapper.findAllUser();
	}

	@Override
	public SchoolMate findUserByUseridandPwd(String userid, String password) {
		// TODO Auto-generated method stub
		return schoolmatemapper.findUserByUseridandPwd(userid, password);
	}

	@Override
	public SchoolMate findUserByUserId(String userid) {
		// TODO Auto-generated method stub
		return schoolmatemapper.findUserByUserId(userid);
	}

	@Override
	public Admit findAdmit(String userid, String password) {
		// TODO Auto-generated method stub
		return schoolmatemapper.findAdmit(userid, password);
	}

}
