package co.yedam.payment.serviceImpl;

import org.apache.ibatis.session.SqlSession;

import co.yedam.common.DataSourceMybatis;
import co.yedam.payment.mapper.PaymentMapper;
import co.yedam.payment.service.PaymentService;
import co.yedam.payment.service.PaymentVO;

public class PaymentServiceImpl implements PaymentService{

	
	
	SqlSession sqlSession = DataSourceMybatis.getInstance().openSession(true);  
	PaymentMapper mapper = sqlSession.getMapper(PaymentMapper.class);

	
	
	@Override
	public boolean addPayment(PaymentVO vo) {
		
		return mapper.insert(vo) == 1;
	}

}
