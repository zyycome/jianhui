package zyycome.db2.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import zyycome.db2.dao.UserDao;
import zyycome.db2.pojo.TUser;

@Service("userservice")
@SuppressWarnings("all")
@Transactional(value = "db2",readOnly=true)
public class UserServiceImpl implements UserService {
	@Autowired UserDao userdao;
	
	public List list(Map map) {
		return userdao.list(map);
	}
	
	public Long count(Map map) {		
		return userdao.count(map);
	}
	
	public TUser load(Long id) {		
		return userdao.load(id);
	}
	
	@Transactional(value = "db2",rollbackFor = {Exception.class},readOnly=false)
	public void save(TUser tuser) {		
		userdao.save(tuser);
	}
	
	@Transactional(value = "db2",rollbackFor = {Exception.class},readOnly=false)
	public void update(TUser tuser) {		
		userdao.update(tuser);
	}
	
	@Transactional(value = "db2",rollbackFor = {Exception.class},readOnly=false)
	public void updatelogin(TUser tuser) {		
		userdao.updatelogin(tuser);
	}
	
	@Transactional(value = "db2",rollbackFor = {Exception.class},readOnly=false)
	public void delete(Long id) {		
		userdao.delete(id);	
	}
	
	@Transactional(value = "db2",rollbackFor = {Exception.class},readOnly=false)
	public void delete(Long ids[]) {
		if(ids!=null){
			for(Long id:ids){
				userdao.delete(id);
			}
		}
	}
	
	public List findByName(TUser tuser) {
		return userdao.findByName(tuser);
	}
	
	public List findByNamePwd(TUser tuser) {
		return userdao.findByNamePwd(tuser);
	}	
	
}
