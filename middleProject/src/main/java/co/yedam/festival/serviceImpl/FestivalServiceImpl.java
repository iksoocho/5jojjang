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
		
		return mapper.festivalList(); //나중에 바꾸기
	}

	

<<<<<<< 2

	@Override

	public FestivalVO select(String pno) {  //한건 상세조회
	      
		return mapper.select(pno);
	}



		// TODO Auto-generated method stub
		return null;
	}
<<<<<<< HEAD
	public List<FestivalVO> dayList(String day) {
>>>>>>> branch 'develope' of https://github.com/iksoocho/5jojjang.git
		

	}
=======
=======
>>>>>>> e58ee0c 1114 진짜 한ㄱ바가지다...하. 찜 버튼까지 완료
	
>>>>>>> branch 'develope' of https://github.com/iksoocho/5jojjang.git




	


<<<<<<< HEAD



=======
>>>>>>> branch 'develope' of https://github.com/iksoocho/5jojjang.git
	

	@Override
	public FestivalVO getfestivalInfo(String fcode) {
		// TODO Auto-generated method stub
		return mapper.festival(fcode);
	}




	@Override
	public List<FestivalVO> dayList() {
		// TODO Auto-generated method stub
		return null;
	}

	
}
