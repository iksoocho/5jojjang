package co.yedam.festival.service;

import java.util.List;

public interface FestivalService {

	List<FestivalVO> festivalList(); // 전체 페스티벌 조회 메소드

	List<FestivalVO> dayList(String day); // 해당날짜에 해당하는 페스티벌 조회 메소드

	public FestivalVO getfestivalInfo(String fcode);// 페스티벌 이름 선택하면 상세페이지로 이동 메소드

	List<FestivalVO> selectLike(String fcode);

}
