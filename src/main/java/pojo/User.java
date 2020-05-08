package pojo;

import java.util.Date;

public class User {
	private Integer id;
	private String name;
	private String password;
	Date loginTime;
	private String anonymousName;
	//把用户名匿名（评论那里用到）
	public String getAnonymousName() {
		if(name == null) {
			return null;
		}
		if(name.length() <= 1) {
			return "*";
		}
		if(name.length() == 2) {
			return "**";
		}
		//把第一个和最后一个之外的字符全都改成‘*’
		char[] cs = name.toCharArray();
		for(int i = 1;i < cs.length - 1;i++) {
			cs[i] = '*';
		}
		return new String(cs);
	}
	public void setAnonymousName(String anonymousName) {
		this.anonymousName = anonymousName;
	}
	public Date getLoginTime() {
		return loginTime;
	}
	public void setLoginTime(Date loginTime) {
		this.loginTime = loginTime;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("User [id=");
		builder.append(id);
		builder.append(", name=");
		builder.append(name);
		builder.append(", password=");
		builder.append(password);
		builder.append(", loginTime=");
		builder.append(loginTime);
		builder.append(", anonymousName=");
		builder.append(anonymousName);
		builder.append("]");
		return builder.toString();
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
