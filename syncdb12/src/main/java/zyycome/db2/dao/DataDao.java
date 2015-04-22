package zyycome.db2.dao;

import java.util.List;
import java.util.Map;

import zyycome.db2.pojo.TData;

@SuppressWarnings("all")
public interface DataDao {
	void save(TData tdata);
	TData load(Long id);		
	void delete(Long id);
	List list(Map map);
	Long count(Map map);
}
