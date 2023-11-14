package co.yedam.festival.mapper;

import java.util.List;

import co.yedam.festival.service.FestivalVO;



public interface FestivalMapper {

	

<<<<<<< HEAD
	List <FestivalVO> festivalList();  
	List <FestivalVO> dayList();
	
=======
	List <FestivalVO> festivalList(); 
	List <FestivalVO> dayList(String day);  
	public FestivalVO select (String pno);
>>>>>>> refs/remotes/origin/2
	
}
