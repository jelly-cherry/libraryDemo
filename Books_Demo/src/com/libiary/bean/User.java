package com.libiary.bean;

public class User {
	
	String user_ID;
	String username;
	String phone;
	String sex;
	String password;
	String manager;//用来辨别管理员身份的
	/**
	 * @return user_ID
	 */
	public String getUser_ID() {
		return user_ID;
	}
	/**
	 * @param user_ID 要设置的 user_ID
	 */
	public void setUser_ID(String user_ID) {
		this.user_ID = user_ID;
	}
	/**
	 * @return username
	 */
	public String getUsername() {
		return username;
	}
	/**
	 * @param username 要设置的 username
	 */
	public void setUsername(String username) {
		this.username = username;
	}
	/**
	 * @return phone
	 */
	public String getPhone() {
		return phone;
	}
	/**
	 * @param phone 要设置的 phone
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}
	/**
	 * @return sex
	 */
	public String getSex() {
		return sex;
	}
	/**
	 * @param sex 要设置的 sex
	 */
	public void setSex(String sex) {
		this.sex = sex;
	}
	/* （非 Javadoc）
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "User [user_ID=" + user_ID + ", username=" + username + ", phone=" + phone + ", sex=" + sex
				+ ", password=" + password + "]";
	}
	/**
	 * @return password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password 要设置的 password
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * @return manager
	 */
	public String getManager() {
		return manager;
	}
	/**
	 * @param manager 要设置的 manager
	 */
	public void setManager(String manager) {
		this.manager = manager;
	}

}
