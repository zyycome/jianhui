package zyycome.db1.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import zyycome.db1.dao.Db1Dao;

@Service("db1service")
@SuppressWarnings("all")
@Transactional(value = "db1",readOnly=true)
public class Db1ServiceImpl implements Db1Service {
	@Autowired Db1Dao db1dao;
	
	public List load(Map map) {		
		return db1dao.load(map);
	}
	
}
