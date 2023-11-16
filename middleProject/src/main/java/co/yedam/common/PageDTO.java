package co.yedam.common;

import lombok.Data;

@Data
public class PageDTO {

	int total; //전체건수
	int currentPage; //현재페이지
	boolean next, prev; //이전 or 이후 페이지 
	int startPage, endPage; 
	
	
	//생성자
	public PageDTO(int total, int currentPage) {
		//실제 마지막페이지
		int realEnd = (int)Math.ceil(total / 5.0);
				
		
		this.total = total;
		this.currentPage = currentPage;
		
		
		//1page 3p ~ 10page. 이전이후페이지이ㅣㅆ는지도 체크.
		this.endPage = (int)Math.ceil(currentPage/10.0) * 10; //math ceil 더블로반환해서 int로 바뀌어야함.
		this.startPage = this.endPage - 9;
		
		this.endPage = (this.endPage > realEnd) ? realEnd : this.endPage;
		
		this.prev = this.startPage > 1;
		this.next = this.endPage  < realEnd; //실제마지막페이지보다 작으면 이후페이지 있음
	}
	
	
	
	
}
