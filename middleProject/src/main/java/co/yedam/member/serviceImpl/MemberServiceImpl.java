package co.yedam.member.serviceImpl;

import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;

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

	@Override
	public void sendMail(String from, String email, String subject, String content) {
		// TODO Auto-generated method stub

				String _email = "tansuhwamullover@gmail.com";
				String _password = "zksgtjaanzdhssis";

				System.out.println("Start JavaMail API Test ~!");

				String fromMail = from;// "cholee@yedam.ac";
				//추후에 변동가능 
				String fromName = "Festival Ticket";
				String toMail = email;// "leadon@naver.com"; // 콤마(,) 나열 가능

				// mail contents
				StringBuffer contents = new StringBuffer();
				contents.append("<h1>Hello</h1>\n");
				contents.append("<p>Nice to meet you ~! :)</p><br>");

				// mail properties
				Properties props = new Properties();
				props.put("mail.smtp.host", "smtp.gmail.com"); // use Gmail
				props.put("mail.smtp.port", "465"); // set port

				props.put("mail.smtp.auth", "true");
				props.put("mail.smtp.starttls.enable", "true"); // use TLS
				props.put("mail.smtp.ssl.protocols", "TLSv1.2");
				props.put("mail.smtp.socketFactory.port", "465");
			    props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

			        

				Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() { // set authenticator
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(_email, _password);
					}
				});
				try {
					MimeMessage message = new MimeMessage(mailSession);

					message.setFrom(new InternetAddress(fromMail, MimeUtility.encodeText(fromName, "UTF-8", "B"))); // 한글의 경우
																													// encoding
																													// 필요
					message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toMail));
					message.setSubject(subject);
					message.setContent(content, "text/html;charset=UTF-8"); // 내용 설정 (HTML 형식)
					message.setSentDate(new java.util.Date());

					Transport t = mailSession.getTransport("smtp");
					t.connect(_email, _password);
					t.sendMessage(message, message.getAllRecipients());
					t.close();

					System.out.println("메일 발송 성공");
				} catch (Exception e) {
					System.out.println("메일 발송 실패");
					e.printStackTrace();
				}
		
	}

	@Override
	public boolean editPass(MemberVO vo) {
		// TODO Auto-generated method stub
		return mapper.updatePass(vo)==1;
	}

	@Override
	public MemberVO getIdEmail(String name, String email) {
		// TODO Auto-generated method stub
		return mapper.getIdEmail(name, email);
	}

	@Override
	public MemberVO getMemberForPass(String pass) {
		// TODO Auto-generated method stub
		return null;
	}

}
