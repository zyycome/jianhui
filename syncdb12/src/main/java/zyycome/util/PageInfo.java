package zyycome.util;

public class PageInfo {
	private long pageindex=1L;
	private long pagesize=12L;
	private long showsize=8L;
	private long totalcount=0L;
	private long pagecount=0L;
	public long getPageindex() {
		return pageindex;
	}
	public void setPageindex(long pageindex) {
		this.pageindex = pageindex;
	}
	public long getPagesize() {
		return pagesize;
	}
	public void setPagesize(long pagesize) {
		this.pagesize = pagesize;
	}
	public long getShowsize() {
		return showsize;
	}
	public void setShowsize(long showsize) {
		this.showsize = showsize;
	}
	public long getTotalcount() {
		return totalcount;
	}
	public void setTotalcount(long totalcount) {
		this.totalcount = totalcount;
	}
	public long getPagecount() {
		return pagecount;
	}
	public void setPagecount(long pagecount) {
		this.pagecount = pagecount;
	}	
}
