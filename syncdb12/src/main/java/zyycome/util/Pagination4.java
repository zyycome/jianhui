package zyycome.util;

import org.apache.commons.lang.StringUtils;

import zyycome.utils.PaginationUtil;

public class Pagination4 extends PaginationUtil{
	public void makeList()
	  {
	    if (this.totalcount == 0L) {
	      this.list = "";
	      return;
	    }
	    StringBuffer sb = new StringBuffer();

	    if (this.showsize == 0L) this.showsize = 1L;
	    long nzoom = (this.pageindex - 1L) / this.showsize;
	    long beginpage = nzoom * this.showsize + 1L;
	    long endpage = beginpage + this.showsize - 1L;
	    if (this.pagecount <= endpage) endpage = this.pagecount;
	    sb.append("<a href='" + this.pageurl + this.linkchar + "pageindex=1" + this.pageparam + "'>");
	    sb.append("<span class='pageColor'>首页</span></a>&nbsp;");
	    sb.append("<a href='" + this.pageurl + this.linkchar + "pageindex=" + (this.pageindex == 1L ? 1L : this.pageindex - 1L) + this.pageparam + "'>");
	    sb.append("<span class='pageColor'>上一页</span></a>&nbsp;");
	    for (long i = beginpage; i <= endpage; i += 1L) {
	      if (this.pageindex == i) {
	        sb.append("<span class='pageCurrentColor'>" + i + "</span>&nbsp;");
	      }
	      else {
	        sb.append("<a href='" + this.pageurl + this.linkchar + "pageindex=" + i + this.pageparam + "'>");
	        sb.append("<span class='pageColor'>" + i + "</span></a>&nbsp;");
	      }
	    }
	    sb.append("<a href='" + this.pageurl + this.linkchar + "pageindex=" + (this.pageindex == this.pagecount ? this.pagecount : this.pageindex + 1L) + this.pageparam + "'>");
	    sb.append("<span class='pageColor'>下一页</span></a>&nbsp;");
	    sb.append("<a href='" + this.pageurl + this.linkchar + "pageindex=" + this.pagecount + this.pageparam + "'>");
	    sb.append("<span class='pageColor'>末页</span></a>&nbsp;");
	    sb.append("<span class='pageColor'>&nbsp;" + this.pagesize + "&nbsp;条/页" + "</span>&nbsp;");
	    sb.append("<span class='pageColor'>共&nbsp;" + this.pagecount + "&nbsp;页" + "</span>&nbsp;");
	    sb.append("<span class='pageColor'>" + this.totalcount + "&nbsp;条数据" + "</span>&nbsp;");
	    this.list = sb.toString();
	    StringUtils.replace(this.list, "'", "\"");
	  }

}
