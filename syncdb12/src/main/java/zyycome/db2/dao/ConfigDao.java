package zyycome.db2.dao;

import java.util.List;
import java.util.Map;

import zyycome.db2.pojo.TConfig;

@SuppressWarnings("all")
public interface ConfigDao {
	TConfig load(Long id);
	TConfig loadByTaskname(String taskname);
	void save(TConfig tconfig);
	void update(TConfig tconfig);
	List list(Map map);
	Long count(Map map);
	void updatecurid(TConfig tconfig);
	void delete(Long id);
	Long countTasknameId(Map map);
	List loadAll();
}
