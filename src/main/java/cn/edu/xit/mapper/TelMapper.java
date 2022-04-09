
package cn.edu.xit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.xit.po.SchoolMate;
import cn.edu.xit.po.TelNote;

	public interface TelMapper {
		//此方法功能是:根据用户的userid和password查询schoolmatenote表
		public SchoolMate findTelByUserIdandPwd(@Param("userid") String userid, @Param("password") String password);
		//此方法功能是:根据用户的userid查询telephonenote表
		public TelNote findTelephoneNoteByUserId(String userid);
		//此方法功能是:根据用户的名字查找telephonenote数据，如果username不为空按照username进行模糊查找，否则查询telephonenote所有数据
		public List<TelNote> findTelephoneNoteByMany(@Param("userid") String userid);
		//此方法功能是：向telephonenote表插入数据
		public void addTelephoneNote(TelNote TelNote);
		//此方法功能是：根据userid删除telephonenote表数据
		public void deleteTelephoneNote(String userid);
		//此方法功能是：修改telephonenote表的数据 
		public void updateTelephoneNote(TelNote TelNote);
		
		
	}

