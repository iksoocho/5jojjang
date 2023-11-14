package co.yedam.festival.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.common.DataSourceMybatis;
import co.yedam.festival.mapper.FestivalMapper;
import co.yedam.festival.service.FestivalService;
import co.yedam.festival.service.FestivalVO;

public class FestivalServiceImpl implements FestivalService {

<<<<<<< HEAD
	
	SqlSession session = DataSourceMybatis.getInstance().openSession(true);
	FestivalMapper mapper = session.getMapper(FestivalMapper.class);
=======
	 SqlSession sqlSession = DataSourceMybatis.getInstance().openSession(true);  
	   FestivalMapper mapper = sqlSession.getMapper(FestivalMapper.class);
	   
	   
>>>>>>> refs/heads/3
	@Override
	public List<FestivalVO> festivalList() {
		
		return mapper.festivalList(); //나중에 바꾸기
	}

	


	@Override
<<<<<<< HEAD
	public FestivalVO select(String pno) {  //한건 상세조회
	      
		return mapper.select(pno);
	}

	@Override
	public List<FestivalVO> dayList(String day) {
		// TODO Auto-generated method stub
		return null;
=======
	public List<FestivalVO> dayList(String day) {
		
		return mapper.dayList(day);
>>>>>>> refs/heads/3
	}


<<<<<<< HEAD


	@Override
	public List<FestivalVO> dayList() {
		// TODO Auto-generated method stub
		return null;
	}


	
=======
	@Override
	public FestivalVO getfestivalInfo(String fcode) {
		// TODO Auto-generated method stub
		return mapper.festival(fcode);
	}
>>>>>>> refs/heads/3
	
	
}
