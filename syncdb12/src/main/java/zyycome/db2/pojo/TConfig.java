package zyycome.db2.pojo;

public class TConfig {
	private Long id=0L;
	private Long curid;
	private String sourcetable;
	private String fields;
	private String keyfield;
	private String taskname;
	private Long enableflag;
	private String remark;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getCurid() {
		return curid;
	}
	public void setCurid(Long curid) {
		this.curid = curid;
	}
	public String getSourcetable() {
		return sourcetable;
	}
	public void setSourcetable(String sourcetable) {
		this.sourcetable = sourcetable;
	}
	public String getFields() {
		return fields;
	}
	public void setFields(String fields) {
		this.fields = fields;
	}
	public String getKeyfield() {
		return keyfield;
	}
	public void setKeyfield(String keyfield) {
		this.keyfield = keyfield;
	}
	public String getTaskname() {
		return taskname;
	}
	public void setTaskname(String taskname) {
		this.taskname = taskname;
	}
	public Long getEnableflag() {
		return enableflag;
	}
	public void setEnableflag(Long enableflag) {
		this.enableflag = enableflag;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
}
