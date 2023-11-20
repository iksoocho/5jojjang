package co.yedam.wish.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.yedam.wish.service.WishVO;

public interface WishMapper {

	public int insert (WishVO vo);  //찜 추가 
	
	public WishVO check (@Param("wid") String wid, @Param("fcode") String fcode); // 찜중복확인
	
	public List <WishVO> wishList(String mid); //해당아이디가 찜한 목록 전부 가져오기 
	
	public int delete (int wno); //찜삭제 
	
	
}
