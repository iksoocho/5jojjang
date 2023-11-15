package co.yedam.adminPage.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.adminPage.mapper.AdminMapper;
import co.yedam.adminPage.service.AdminService;
import co.yedam.adminPage.service.AdminVO;
import co.yedam.common.DataSourceMybatis;




public class AdminServiceImpl implements AdminService {

	SqlSession sqlSession = DataSourceMybatis.getInstance().openSession(true); //true 넣어주면 자동 commit됨.
	AdminMapper mapper = sqlSession.getMapper(AdminMapper.class);//인터페이스 , 실제인스턴스
	
	@Override
	public List<AdminVO> festivalList() {
		return mapper.selectList();
	}

	@Override
	public AdminVO getFestival(String fcode) {
		return mapper.select(fcode);
	}

	@Override
	public boolean addFestival(AdminVO vo) {
		return mapper.insert(vo) == 1;
	}

	@Override
	public boolean editFestival(AdminVO vo) {
		return mapper.update(vo) == 1; 
	}

	@Override
	public boolean removeFestival(String fcode) {
		return mapper.delete(fcode) == 1;
	}


}
