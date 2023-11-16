package co.yedam.cart.service;

import lombok.Data;

@Data

public class CartVO {

	private String fcode;  //축제코드
	private String cid;    //아이디
	private int adcnt;     //어른수량
	private int chcnt;     //아동수량 
	
	
}
