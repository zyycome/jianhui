package zyycome.db2.service;

import java.util.List;
import java.util.Map;

import zyycome.db2.pojo.TUser;

@SuppressWarnings("all")
public interface UserService {	
	public List list(Map map);
	public Long count(Map map);
	public TUser load(Long id);	
	public void save(TUser tuser);
	public void update(TUser tuser);
	public void updatelogin(TUser tuser);
	public void delete(Long id);
	public void delete(Long ids[]);
	public List findByName(TUser tuser);
	public List findByNamePwd(TUser tuser);
}
