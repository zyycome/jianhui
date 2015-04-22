package zyycome.db2.service;

import java.util.List;
import java.util.Map;

import zyycome.db2.pojo.TData;


@SuppressWarnings("all")
public interface DataService {	
	public List list(Map map);
	public Long count(Map map);
	public TData load(Long id);	
	public void save(TData tdata);
	public void delete(Long id);
	public void delete(Long ids[]);
}
