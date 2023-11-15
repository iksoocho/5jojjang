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
		return mapper.festivalList(); // 나중에 바꾸기
	}

	@Override

	public FestivalVO select(String pno) { // 한건 상세조회

		return null;
	}

	@Override
	public FestivalVO getfestivalInfo(String fcode) {
		return mapper.festival(fcode);
	}

	@Override
	public List<FestivalVO> dayList(String day) {
		return null;
	}

}
