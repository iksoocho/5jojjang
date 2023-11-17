package co.yedam.payment.mapper;

import java.util.List;

import co.yedam.payment.service.PaymentVO;

public interface PaymentMapper {
	public int insert(PaymentVO vo); //결제정보 입력
//	public List<PaymentVO> selectList(String pid);  //결제내역 조회
}
