package com.libiary.bean;

public class Book {
		private String bookID;
		private String bookName;
		private String writer;
		private String price;
		/* （非 Javadoc）
		 * @see java.lang.Object#toString()
		 */
		@Override
		public String toString() {
			return "Book [bookID=" + bookID + ", bookName=" + bookName + ", writer=" + writer + ", price=" + price
					+ "]";
		}
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
		/**
		 * @return writer
		 */
		public String getWriter() {
			return writer;
		}
		/**
		 * @param writer 要设置的 writer
		 */
		public void setWriter(String writer) {
			this.writer = writer;
		}
		/**
		 * @return price
		 */
		public String getPrice() {
			return price;
		}
		/**
		 * @param price 要设置的 price
		 */
		public void setPrice(String price) {
			this.price = price;
		}
		
}
