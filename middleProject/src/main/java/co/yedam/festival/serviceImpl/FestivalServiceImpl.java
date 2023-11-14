package co.yedam.festival.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.common.DataSourceMybatis;
import co.yedam.festival.mapper.FestivalMapper;
import co.yedam.festival.service.FestivalService;
import co.yedam.festival.service.FestivalVO;

public class FestivalServiceImpl implements FestivalService {

	 SqlSession sqlSession = DataSourceMybatis.getInstance().openSession(true);  
	   FestivalMapper mapper = sqlSession.getMapper(FestivalMapper.class);
	   
	   
	@Override
	public List<FestivalVO> festivalList() {
		
		return null; //나중에 바꾸기
	}

	@Override
	public List<FestivalVO> dayList(String day) {
		
		return mapper.dayList(day);
	}

	
	
	
}
