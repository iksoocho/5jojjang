package co.yedam.common;


import java.util.ArrayList;
import java.util.List;

import co.yedam.member.service.MemberService;
import co.yedam.member.service.MemberVO;
import co.yedam.member.serviceImpl.MemberServiceImpl;

public class MainExe {
	public static void main(String[] args) {
		

		
		
		//SqlSession session = DataSourceMybatis.getInstance().openSession(true);
		//MemberMapper mapper = session.getMapper(MemberMapper.class);
		
		
		MemberService svc = new MemberServiceImpl();
		
		List<MemberVO> list = svc.memberList();
		
		List<String> midList = new ArrayList<>();
		for (MemberVO member : list) {
		    midList.add(member.getMid());
		}
		
		System.out.println(midList);
		
		
		
		
	}
}
