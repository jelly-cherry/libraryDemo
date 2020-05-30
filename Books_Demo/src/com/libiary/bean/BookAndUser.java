package com.libiary.bean;

public class BookAndUser {
	
	String bookID;
	String user_ID;
	String bookName;
	/**
	 * @return bookID
	 */
	public String getBookID() {
		return bookID;
	}
	/**
	 * @param bookID 要设置的 bookID
	 */
	public void setBookID(String bookID) {
		this.bookID = bookID;
	}
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
	 * @return bookName
	 */
	public String getBookName() {
		return bookName;
	}
	/**
	 * @param bookName 要设置的 bookName
	 */
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	/* （非 Javadoc）
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "BookAndUser [bookID=" + bookID + ", user_ID=" + user_ID + ", bookName=" + bookName + "]";
	} 
}
