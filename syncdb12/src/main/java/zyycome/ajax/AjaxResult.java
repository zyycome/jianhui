package zyycome.ajax;

public class AjaxResult
{
  private boolean success;
  private String msg;
  private String url;
  private Object object;

  public boolean isSuccess()
  {
    return this.success;
  }
  public void setSuccess(boolean success) {
    this.success = success;
  }
  public String getMsg() {
    return this.msg;
  }
  public void setMsg(String msg) {
    this.msg = msg;
  }
  public String getUrl() {
    return this.url;
  }
  public void setUrl(String url) {
    this.url = url;
  }
  public Object getObject() {
    return this.object;
  }
  public void setObject(Object object) {
    this.object = object;
  }
}