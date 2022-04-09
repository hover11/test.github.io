package cn.edu.xit.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.xit.po.Message;

public interface MessageService {
	public List<Message> findMessageByUserIdToPerson(String userid);
	public List<Message> findMessageByUserid(@Param("userid") String userid);
	public int deleteMessageByUserId(@Param("userid") String userid, @Param("id") String id);
	public int addMessage(Message message);

}
