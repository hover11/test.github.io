package cn.edu.xit.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.xit.po.SchoolMate;
import cn.edu.xit.po.TelNote;


public interface TelService {
	public TelNote findTelephoneNoteByUserId(String userid);
	public List<TelNote> findTelephoneNoteByMany(@Param("userid") String userid);
	public void addTelephoneNote(TelNote TelNote);
	public void deleteTelephoneNote(String userid);
	public void updateTelephoneNote(TelNote TelNote);
	
	
}
