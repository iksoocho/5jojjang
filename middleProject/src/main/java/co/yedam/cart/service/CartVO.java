package co.yedam.cart.service;

import lombok.Data;

@Data

public class CartVO {

	private String fcode;  //축제코드
	private String cid;    //아이디
	private int adcnt;     //어른수량
	private int chcnt;     //아동수량 
	
	private String fname;
	private String fphone;
	private String fplace;
	private int fprice1;
	private int fprice2;
	private String fimage;
	private String fsdate;
	private String fedate;
	private String flat;
	private String flng;
	private String fcontent;
	private String likeIt;
	
}
