package zyycome.db2.service;

import java.util.List;
import java.util.Map;

import zyycome.db2.pojo.TConfig;

@SuppressWarnings("all")
public interface ConfigService {	
	public List list(Map map);
	public Long count(Map map);
	public TConfig load(Long id);	
	public void save(TConfig tconfig);
	public void update(TConfig tconfig);	
	public void updatecurid(TConfig tconfig);
	public TConfig loadByTaskname(String taskname);	
	public void delete(Long id);
	public void delete(Long ids[]);
	public Long countTasknameId(Map map);
	public List loadAll();
}
