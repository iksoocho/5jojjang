package co.yedam.payment.mapper;

import java.util.List;
import java.util.Map;

import co.yedam.payment.service.PaymentVO;

public interface PaymentMapper {
	public int insert(PaymentVO vo); //결제정보 입력
	public List<PaymentVO> paymentList(String pid);  //결제내역 조회
	
	
	public List<Map<String, Object>> getCountByWriter();
}
