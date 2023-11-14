package co.yedam.festival.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.common.DataSourceMybatis;
import co.yedam.festival.mapper.FestivalMapper;
import co.yedam.festival.service.FestivalService;
import co.yedam.festival.service.FestivalVO;

public class FestivalServiceImpl implements FestivalService {

	
	SqlSession session = DataSourceMybatis.getInstance().openSession(true);
	FestivalMapper mapper = session.getMapper(FestivalMapper.class);
	@Override
	public List<FestivalVO> festivalList() {
		
		return null;
	}

	


	@Override
	public FestivalVO select(String pno) {  //한건 상세조회
	      
		return mapper.select(pno);
	}

	@Override
	public List<FestivalVO> dayList(String day) {
		// TODO Auto-generated method stub
		return null;
	}




	@Override
	public List<FestivalVO> dayList() {
		// TODO Auto-generated method stub
		return null;
	}


	
	
	
}
