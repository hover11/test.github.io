package cn.edu.xit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.xit.po.Message;

public interface MessageMapper {
	public List<Message> findMessageByUserIdToPerson(@Param("userid") String userid);
	public List<Message> findMessageByUserid(@Param("userid") String userid);
	public int deleteMessageByUserId(@Param("userid") String userid, @Param("id") String id);
	public int addMessage(Message message);
}
