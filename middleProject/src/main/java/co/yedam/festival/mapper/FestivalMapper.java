package co.yedam.festival.mapper;

import java.util.List;

import co.yedam.festival.service.FestivalVO;



public interface FestivalMapper {

	

	List <FestivalVO> festivalList(); 
	List <FestivalVO> dayList(String day);  
	
	
}
