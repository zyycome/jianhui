package zyycome.db2.pojo;

import java.util.Date;

public class TUser {
	private Long id=0L;
	private String name;
	private String pwd;
	private Date inserttime;
	private String lastloginip;
	private Date lastlogintime;
	private Long logincount;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public Date getInserttime() {
		return inserttime;
	}
	public void setInserttime(Date inserttime) {
		this.inserttime = inserttime;
	}
	public String getLastloginip() {
		return lastloginip;
	}
	public void setLastloginip(String lastloginip) {
		this.lastloginip = lastloginip;
	}
	public Date getLastlogintime() {
		return lastlogintime;
	}
	public void setLastlogintime(Date lastlogintime) {
		this.lastlogintime = lastlogintime;
	}
	public Long getLogincount() {
		return logincount;
	}
	public void setLogincount(Long logincount) {
		this.logincount = logincount;
	}
	
}
