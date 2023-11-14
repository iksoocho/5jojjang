package co.yedam.festival.serviceImpl;

import java.util.List;

import co.yedam.festival.service.FestivalService;
import co.yedam.festival.service.FestivalVO;

public class FestivalServiceImpl implements FestivalService {

	@Override
	public List<FestivalVO> festivalList() {
		
		return null;
	}

	@Override
	public List<FestivalVO> dayList() {
		
		return null;
	}

	@Override
	public FestivalVO select(String pno) {  //한건 상세조회
	      
		return mapper.select(pno);
	}

	
	
	
}
