package co.yedam.member.service;

import lombok.Data;

@Data
public class MemberVO {
	private String mid;
	private String name;
	private String pass;
	private String ssn;
	private String phone;
	private String email;
	private String responsibility;
	
	private String ckNumber;
}
