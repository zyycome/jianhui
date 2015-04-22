package zyycome.task;

import java.io.StringReader;
import java.io.StringWriter;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.builder.ReflectionToStringBuilder;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.exolab.castor.xml.Marshaller;
import org.exolab.castor.xml.Unmarshaller;
import org.quartz.JobDataMap;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.MethodInvokingJobDetailFactoryBean.StatefulMethodInvokingJob;

import zyycome.db1.pojo.T_Db1;
import zyycome.db1.service.Db1Service;
import zyycome.db2.pojo.TConfig;
import zyycome.db2.pojo.TData;
import zyycome.db2.service.ConfigService;
import zyycome.db2.service.DataService;
import zyycome.util.MapUtil;

@SuppressWarnings("all")
public class Task22 extends StatefulMethodInvokingJob{
	private static final Log log = LogFactory.getLog(Task22.class);

	@Override
	protected void executeInternal(JobExecutionContext arg0)
			throws JobExecutionException {
		JobDataMap jobdatamap=arg0.getMergedJobDataMap();
		Db1Service db1service=(Db1Service) jobdatamap.get("db1service");
		ConfigService configservice=(ConfigService) jobdatamap.get("configservice");
		DataService dataservice=(DataService) jobdatamap.get("dataservice");
		List configlist=configservice.loadAll();
		TConfig tconfig=null;
		for(int j=0;j<configlist.size();j++){
			tconfig=(TConfig) configlist.get(j);
			if(tconfig!=null){
				//log.info(ReflectionToStringBuilder.toString(tconfig));
				//加载需要同步的表，字段
				String fields[]=StringUtils.split(tconfig.getFields(),",");
				Map map=new HashMap();
				map.put("fields", tconfig.getFields());
				map.put("sourcetable", tconfig.getSourcetable());
				map.put("keyfield", tconfig.getKeyfield());
				map.put("curid", tconfig.getCurid());		
				List list=db1service.load(map);
				T_Db1 tdb1=new T_Db1();				
				TData tdata=new TData();
				for(int i=0;i<list.size();i++){
					Map datamap=(Map) list.get(i);
					MapUtil.mapc(datamap);
					tdb1.setMap(datamap);
					tdata.setSynctype("db");
					tdata.setSourcetable(tconfig.getSourcetable());
					StringWriter writer = new StringWriter(); 
					try{						
	                    Marshaller marshaller = new Marshaller(writer); 
	                    marshaller.setEncoding("utf-8"); 
	                    marshaller.marshal(tdb1); 
					}
					catch(Exception er){
						
					}					
					tdata.setData(writer.getBuffer().toString());
					tdata.setInserttime(new Date());
					log.info("数据表："+tdata.getSourcetable()+" 内容："+ReflectionToStringBuilder.toString(tdata));
					dataservice.save(tdata);
					tconfig.setCurid(Long.parseLong(datamap.get(tconfig.getKeyfield()).toString()));
					configservice.updatecurid(tconfig);
				}
			}
		}
		//super.executeInternal(arg0);
	}	

}
