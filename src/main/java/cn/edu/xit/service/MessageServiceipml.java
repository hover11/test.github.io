package cn.edu.xit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.xit.mapper.MessageMapper;
import cn.edu.xit.po.Message;
@Service
public class MessageServiceipml implements MessageService{
    @Autowired
    private MessageMapper messageMapper;
	@Override
	public List<Message> findMessageByUserIdToPerson(String userid) {
		// TODO Auto-generated method stub
		return messageMapper.findMessageByUserIdToPerson(userid);
	}

	@Override
	public List<Message> findMessageByUserid(String userid) {
		// TODO Auto-generated method stub
		return messageMapper.findMessageByUserid(userid);
	}

	@Override
	public int deleteMessageByUserId(String userid,String id) {
		// TODO Auto-generated method stub
		return messageMapper.deleteMessageByUserId(userid,id);
	}

	@Override
	public int addMessage(Message message) {
		// TODO Auto-generated method stub
		return messageMapper.addMessage(message);
	}

}
