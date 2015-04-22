package zyycome.db2.dao;

import java.util.List;
import java.util.Map;

import zyycome.db2.pojo.TUser;

@SuppressWarnings("all")
public interface UserDao {
	TUser load(Long id);
	void save(TUser tuser);
	void update(TUser tuser);
	void updatelogin(TUser tuser);
	List list(Map map);
	Long count(Map map);
	void delete(Long id);
	List findByName(TUser tuser);
	List findByNamePwd(TUser tuser);
}
