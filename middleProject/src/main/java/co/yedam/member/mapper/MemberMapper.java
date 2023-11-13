package co.yedam.member.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.yedam.member.service.MemberVO;

public interface MemberMapper {
	public List<MemberVO> list();
	public MemberVO select(String mid);
	public int insert(MemberVO vo);
	public int update(MemberVO vo);
	public int delete(MemberVO vo);
	
	public MemberVO getUser(@Param("id") String id, @Param("pw") String pw);
}
