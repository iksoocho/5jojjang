package co.yedam.adminPage.mapper;

import java.util.List;

import co.yedam.adminPage.service.AdminVO;



public interface AdminMapper {

	public List<AdminVO> selectList(); //전체 
	public AdminVO select(String fcode); //하나
	public int insert(AdminVO vo); // 추가
	public int update(AdminVO vo); //수정
	public int delete(String  fcode); //삭제


}
