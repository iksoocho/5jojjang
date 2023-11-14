package co.yedam.member.service;

import java.util.List;

public interface MemberService {
	public List<MemberVO> memberList();
	public MemberVO getMember(String mid);
	public boolean addMember(MemberVO vo);
	public boolean aditMember(MemberVO vo);
	public boolean removeMember(String mid);
	
	//로그인 처리
	public MemberVO loginCheck(String id, String pw);
}
