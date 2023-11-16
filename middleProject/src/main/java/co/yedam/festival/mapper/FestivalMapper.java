package co.yedam.festival.mapper;

import java.util.List;

import co.yedam.festival.service.FestivalVO;

public interface FestivalMapper {

	List<FestivalVO> dayList(String day);

	List<FestivalVO> festivalList();
	
	List<FestivalVO> selectLike(String fcode);

	FestivalVO festival(String fcode);
	
	List<FestivalVO> selectLike(String fcode);
	
}
