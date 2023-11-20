package co.yedam.member.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.yedam.member.service.MemberVO;

public interface MemberMapper {
	public List<MemberVO> list();
	public MemberVO select(String mid);
	public int insert(MemberVO vo);
	public int update(MemberVO vo);
	public int delete(String mid);
	
	public MemberVO getUser(@Param("id") String id, @Param("pw") String pw);
	
	public int updatePass(MemberVO vo);
	
	public MemberVO getIdEmail(@Param("name")String name, @Param("email")String email);
}
