package co.yedam.cart.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.cart.mapper.CartMapper;
import co.yedam.cart.service.CartService;
import co.yedam.cart.service.CartVO;
import co.yedam.common.DataSourceMybatis;

public class CartServiceImpl implements CartService{

	SqlSession sqlSession = DataSourceMybatis.getInstance().openSession(true);  
	CartMapper mapper = sqlSession.getMapper(CartMapper.class);
	
	
	@Override
	public boolean addCart(CartVO vo) {
		
		return mapper.insert(vo) == 1;
	}


	@Override
	public List<CartVO> cartList(String mid) {
		
		return mapper.cartList(mid);
	}


	@Override
	public boolean removeCart(int cno) {
		
		return mapper.delete(cno) ==1;
	}



	
	
	
}
