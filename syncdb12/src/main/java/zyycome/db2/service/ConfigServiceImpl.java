package zyycome.db2.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import zyycome.db2.dao.ConfigDao;
import zyycome.db2.pojo.TConfig;
import zyycome.db2.pojo.TData;

@Service("configservice")
@SuppressWarnings("all")
@Transactional(value = "db2",readOnly=true)
public class ConfigServiceImpl implements ConfigService {
	@Autowired ConfigDao configdao;
	
	public List list(Map map) {
		return configdao.list(map);
	}
	
	public Long count(Map map) {		
		return configdao.count(map);
	}
	
	public TConfig load(Long id) {		
		return configdao.load(id);
	}
	
	@Transactional(value = "db2",rollbackFor = {Exception.class},readOnly=false)
	public void save(TConfig tconfig) {		
		configdao.save(tconfig);
	}
	
	@Transactional(value = "db2",rollbackFor = {Exception.class},readOnly=false)
	public void update(TConfig tconfig) {		
		configdao.update(tconfig);
	}

	@Transactional(value = "db2",rollbackFor = {Exception.class},readOnly=false)
	public void updatecurid(TConfig tconfig) {		
		configdao.updatecurid(tconfig);
	}
	
	public TConfig loadByTaskname(String taskname) {		
		return configdao.loadByTaskname(taskname);
	}
	
	@Transactional(value = "db2",rollbackFor = {Exception.class},readOnly=false)
	public void delete(Long id) {		
		configdao.delete(id);	
	}
	
	@Transactional(value = "db2",rollbackFor = {Exception.class},readOnly=false)
	public void delete(Long ids[]) {
		if(ids!=null){
			for(Long id:ids){
				configdao.delete(id);
			}
		}
	}
	
	public Long countTasknameId(Map map) {		
		return configdao.countTasknameId(map);
	}
	
	public List loadAll() {
		return configdao.loadAll();
	}
	
}
