package co.yedam.payment.service;

import java.util.List;
import java.util.Map;

import co.yedam.cart.service.CartVO;

public interface PaymentService {
	public boolean appPayment(PaymentVO vo); //결제정보 입력
	public List<PaymentVO> paymentList(String mid); //결제정보 확인
	
	
	
	public List<Map<String, Object>> getCountByWriter();//차트
	
}
