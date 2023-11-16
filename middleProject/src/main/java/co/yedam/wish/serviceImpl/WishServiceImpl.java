package co.yedam.wish.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.common.DataSourceMybatis;
import co.yedam.wish.mapper.WishMapper;
import co.yedam.wish.service.WishService;
import co.yedam.wish.service.WishVO;

public class WishServiceImpl implements WishService {

	SqlSession sqlSession = DataSourceMybatis.getInstance().openSession(true);  //true하면 자동 커밋하겠다는 말 
	WishMapper mapper = sqlSession.getMapper(WishMapper.class);
	
	
	@Override
	public boolean addWish(WishVO vo) {
		
		return mapper.insert(vo) == 1;  //찜추가 
	}


	@Override
	public WishVO checkWish(String wid, String fcode) {
		
		return mapper.check(wid, fcode);
	}


	@Override
	public List<WishVO> wishList(String mid) {
		
		return mapper.wishList(mid);
	}


	
	
}
