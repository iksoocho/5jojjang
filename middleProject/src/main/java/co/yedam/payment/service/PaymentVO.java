package co.yedam.payment.service;

import lombok.Data;

@Data

public class PaymentVO {

	private String fcode;  //축제코드
	private String pid;    //아이디
	private int adcnt;     //어른수량
	private int chcnt;     //아동수량 
	
	
	
}
