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
		return false;
	}

	@Override
	public boolean removeMember(String mid) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public MemberVO loginCheck(String id, String pw) {
		// TODO Auto-generated method stub
		return null;
	}

}
