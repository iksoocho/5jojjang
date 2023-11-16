package co.yedam.member.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.common.DataSourceMybatis;
import co.yedam.member.mapper.MemberMapper;
import co.yedam.member.service.MemberService;
import co.yedam.member.service.MemberVO;

public class MemberServiceImpl implements MemberService {

	SqlSession session = DataSourceMybatis.getInstance().openSession(true);
	MemberMapper mapper = session.getMapper(MemberMapper.class);
	
	@Override
	public List<MemberVO> memberList() {
		// TODO Auto-generated method stub
		return mapper.list();
	}

	@Override
	public MemberVO getMember(String mid) {
		// TODO Auto-generated method stub
		return mapper.select(mid);
	}

	@Override
	public boolean addMember(MemberVO vo) {
		// TODO Auto-generated method stub
		return mapper.insert(vo)==1;
	}

	@Override
	public boolean aditMember(MemberVO vo) {
		// TODO Auto-generated method stub
		return mapper.update(vo)==1;
	}

	@Override
	public boolean removeMember(String mid) {
		// TODO Auto-generated method stub
		return mapper.delete(mid)==1;
	}

	@Override
	public MemberVO loginCheck(String id, String pw) {
		// TODO Auto-generated method stub
		return mapper.getUser(id, pw);
	}

}
