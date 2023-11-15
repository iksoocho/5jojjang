package co.yedam.festival.service;

import java.util.List;

public interface FestivalService {
	
	List <FestivalVO> festivalList();  //전체 페스티벌 조회 메소드 
<<<<<<< 2

<<<<<<< HEAD


=======
	List <FestivalVO> dayList(String day);  //해당날짜에 해당하는 페스티벌 조회 메소드 
>>>>>>> e58ee0c 1114 진짜 한ㄱ바가지다...하. 찜 버튼까지 완료


	List <FestivalVO> dayList(String day);  //해당날짜에 해당하는 페스티벌 조회 메소드 

=======
>>>>>>> branch 'develope' of https://github.com/iksoocho/5jojjang.git

	List <FestivalVO> dayList();  //해당날짜에 해당하는 페스티벌 조회 메소드 

	

	public FestivalVO select (String pno);  //축제 상세조회




<<<<<<< HEAD
=======
	List <FestivalVO> dayList(String day);  //해당날짜에 해당하는 페스티벌 조회 메소드 
	public FestivalVO getfestivalInfo(String fcode);//페스티벌 이름 선택하면 상세페이지로 이동 메소드
>>>>>>> branch 'develope' of https://github.com/iksoocho/5jojjang.git
	
<<<<<<< HEAD
	
=======

>>>>>>> branch 'develope' of https://github.com/iksoocho/5jojjang.git
}
