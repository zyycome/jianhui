package zyycome.db2.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import zyycome.db2.dao.DataDao;
import zyycome.db2.pojo.TData;

@Service("dataservice")
@SuppressWarnings("all")
@Transactional(value = "db2",readOnly=true)
public class DataServiceImpl implements DataService {
	@Autowired DataDao datadao;
	
	public List list(Map map) {
		return datadao.list(map);
	}
	
	public Long count(Map map) {		
		return datadao.count(map);
	}
	
	public TData load(Long id) {		
		return datadao.load(id);
	}
	
	@Transactional(value = "db2",rollbackFor = {Exception.class},readOnly=false)
	public void save(TData tdata) {		
		datadao.save(tdata);	
	}
	
	@Transactional(value = "db2",rollbackFor = {Exception.class},readOnly=false)
	public void delete(Long id) {		
		datadao.delete(id);	
	}
	
	@Transactional(value = "db2",rollbackFor = {Exception.class},readOnly=false)
	public void delete(Long ids[]) {
		if(ids!=null){
			for(Long id:ids){
				datadao.delete(id);
			}
		}
	}
	
}
