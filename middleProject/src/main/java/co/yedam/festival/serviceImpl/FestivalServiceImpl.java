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
		return mapper.festivalList(); // 전체조회
	}
	

	@Override  //한건 상세 조회 
	public FestivalVO getfestivalInfo(String fcode) {
		return mapper.festival(fcode);
	}

	@Override  //날짜에 해당하는 축제 리스트 불러오기 
	public List<FestivalVO> dayList(String day) {
		return mapper.dayList(day);
	}


	@Override
	public List<FestivalVO> selectLike(String fcode) {  //별점 높은순
		// TODO Auto-generated method stub
		return mapper.selectLike(fcode);
	}

}
