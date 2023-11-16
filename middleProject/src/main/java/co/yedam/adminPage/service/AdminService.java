package co.yedam.adminPage.service;

import java.util.List;

public interface AdminService {
	
	public List<AdminVO> festivalList();
	public AdminVO getFestival(String fcode);
	public boolean addFestival(AdminVO vo);
	public boolean editFestival(AdminVO vo);
	public boolean removeFestival(String fcode);
	
}
