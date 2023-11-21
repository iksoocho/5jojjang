package co.yedam.payment.service;

import lombok.Data;

@Data
public class PaymentVO {

	private String pid;
	private int pno;
	private int adcnt;
	private int chcnt;
	private String fcode;
	private String fimage;
	private String fname;
	private int fprice1;
	private int fprice2;
	private String fsdate;
	private String fedate;
	private String merchantUid;
	
	
}
