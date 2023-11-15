package co.yedam.festival.mapper;

import java.util.List;

import co.yedam.festival.service.FestivalVO;



public interface FestivalMapper {

	



	List <FestivalVO> dayList();


	List <FestivalVO> dayList(String day);  


	List <FestivalVO> festivalList();  

	FestivalVO festival(String fcode);
	






}
