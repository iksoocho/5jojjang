package co.yedam.payment.serviceImpl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import co.yedam.common.DataSourceMybatis;
import co.yedam.payment.mapper.PaymentMapper;
import co.yedam.payment.service.PaymentService;
import co.yedam.payment.service.PaymentVO;

public class PaymentServiceImpl implements PaymentService {
	SqlSession session = DataSourceMybatis.getInstance().openSession(true);
	PaymentMapper mapper = session.getMapper(PaymentMapper.class);

	@Override
	public boolean appPayment(PaymentVO vo) {
		// TODO Auto-generated method stub
		return mapper.insert(vo) == 1;
	}

	@Override
	public List<PaymentVO> paymentList(String mid) {
		// TODO Auto-generated method stub
		return mapper.paymentList(mid);
	}

	@Override
	public List<Map<String, Object>> getCountByWriter() {
		// TODO Auto-generated method stub
		return mapper.getCountByWriter();
	}
	

}
