package com.oracle.S20220602.kkh.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Paging {
	private int currentPage = 1;	private int rowPage   = 5;
	private int pageBlock = 5;		
	private int start;				private int end;
	private int startPage;			private int endPage;
	private int total;				private int totalPage;

	public Paging(int total, String currentPage1) {
		this.total = total;
		if (currentPage1 != null) {
			this.currentPage = Integer.parseInt(currentPage1);	
		}
		start = (currentPage - 1) * rowPage + 1;  
		end   = start + rowPage - 1; 
		totalPage = (int) Math.ceil((double)total / rowPage);

		startPage = currentPage - (currentPage - 1) % pageBlock;
		endPage = startPage + pageBlock - 1;
		// 가짜 Page 방지
		if (endPage > totalPage) {
			endPage = totalPage;
		}
	}	
}