package zyycome.db2.pojo;

import java.util.Date;

public class TData {
	private Long id=0L;
	private String data;
	private Date inserttime;
	private Long syncflag;
	private Long echoflag;
	private Date synctime;
	private Date echotime;
	private String sourcetable;
	private String synctype;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}	
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public Date getInserttime() {
		return inserttime;
	}
	public void setInserttime(Date inserttime) {
		this.inserttime = inserttime;
	}
	public Long getSyncflag() {
		return syncflag;
	}
	public void setSyncflag(Long syncflag) {
		this.syncflag = syncflag;
	}
	public Long getEchoflag() {
		return echoflag;
	}
	public void setEchoflag(Long echoflag) {
		this.echoflag = echoflag;
	}
	public Date getSynctime() {
		return synctime;
	}
	public void setSynctime(Date synctime) {
		this.synctime = synctime;
	}
	public Date getEchotime() {
		return echotime;
	}
	public void setEchotime(Date echotime) {
		this.echotime = echotime;
	}
	public String getSourcetable() {
		return sourcetable;
	}
	public void setSourcetable(String sourcetable) {
		this.sourcetable = sourcetable;
	}
	public String getSynctype() {
		return synctype;
	}
	public void setSynctype(String synctype) {
		this.synctype = synctype;
	}	
}
