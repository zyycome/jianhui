package zyycome.util;

import java.util.Iterator;
import java.util.Map;

public class MapUtil {
	public static String map2str(Map map){
		StringBuffer sb=new StringBuffer();
		Iterator iterator=map.keySet().iterator();
		while(iterator.hasNext()){
			String field=(String) iterator.next();
			sb.append(field);
			sb.append("=");
			sb.append(map.get(field));
			sb.append(" ");
		}
		return sb.toString();
	}
	
	public static String map2str(Map map,String fields[]){
		StringBuffer sb=new StringBuffer();
		for(String field:fields){
			sb.append(field);
			sb.append("=");
			sb.append(map.get(field));
			sb.append(" ");
		}		
		return sb.toString();
	}
	
	public static void mapc(Map map){
		Iterator iterator=map.keySet().iterator();
		while(iterator.hasNext()){
			Object key=iterator.next();
			Object value=map.get(key);
			if(value.getClass().getName().equals("java.sql.Timestamp")){
				map.put(key, value.toString());
			}
		}
	}
}
