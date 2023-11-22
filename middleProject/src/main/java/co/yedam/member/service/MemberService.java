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
	
	//비밀번호, 아이디 찾기 메일 보내기
	public void sendMail(String from, String email, String subject, String content);
	
	//비밀번호 변경
	public boolean editPass(MemberVO vo);
	
	//아이디 , 이메일로 사람 찾기
	public MemberVO getIdEmail(String name, String email);
	
	//비밀번호 체크
	public MemberVO getMemberForPass(String pass);

}
