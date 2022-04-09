package cn.edu.xit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.xit.mapper.TelMapper;

import cn.edu.xit.po.SchoolMate;
import cn.edu.xit.po.TelNote;

import cn.edu.xit.service.TelService;
@Service
@Transactional
public class TelServiceImpl implements TelService{
	@Autowired
	private TelMapper  telMapper;

	@Override
	public TelNote findTelephoneNoteByUserId(String userid) {
		// TODO Auto-generated method stub
		return telMapper.findTelephoneNoteByUserId(userid);
	}

	@Override
	public List<TelNote> findTelephoneNoteByMany(String username) {
		// TODO Auto-generated method stub
		return telMapper.findTelephoneNoteByMany(username);
	}

	@Override
	public void addTelephoneNote(TelNote TelNote) {
		// TODO Auto-generated method stub
		telMapper.addTelephoneNote(TelNote);
		
	}

	@Override
	public void deleteTelephoneNote(String userid) {
		// TODO Auto-generated method stub
		telMapper.deleteTelephoneNote(userid);
	}

	@Override
	public void updateTelephoneNote(TelNote TelNote) {
		// TODO Auto-generated method stub
		telMapper.updateTelephoneNote(TelNote);
	}

	
	
	
	
}
