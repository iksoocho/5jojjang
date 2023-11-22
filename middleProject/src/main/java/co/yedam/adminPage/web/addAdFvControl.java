package co.yedam.adminPage.web;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.yedam.adminPage.service.AdminService;
import co.yedam.adminPage.service.AdminVO;
import co.yedam.adminPage.serviceImpl.AdminServiceImpl;
import co.yedam.common.Command;

public class addAdFvControl implements Command {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {

		AdminVO vo = new AdminVO();

		req.getMethod().equals("POST");

		String saveDir = req.getServletContext().getRealPath("resources/images"); 
		int size = 5 * 1024 * 1024;

		try {
			MultipartRequest mr = //
					new MultipartRequest(req, // 요청정보
							saveDir, // 파일이 저장될 정보
							size, // 파일크기
							"UTF-8", // 인코딩방식
							new DefaultFileRenamePolicy());// 리네임정책
			String fcode = mr.getParameter("fcode");
			String fname = mr.getParameter("fname");
			String fphone = mr.getParameter("fphone");
			String fsdate = mr.getParameter("fsdate");
			String fedate = mr.getParameter("fedate");
			String fplace = mr.getParameter("fplace");
			String flat = mr.getParameter("flat");
			String flng = mr.getParameter("flng");
			
			String fcontent = mr.getParameter("fcontent");
			String fimage = mr.getFilesystemName("fimage");
			String fprice1 = mr.getParameter("fprice1");
			String fprice2 = mr.getParameter("fprice2");

			// 이 네개의 값을 담아줌
			vo.setFcode(fcode);
			vo.setFname(fname);
			vo.setFphone(fphone);
			vo.setFsdate(fsdate);
			vo.setFedate(fedate);
			vo.setFplace(fplace);
			vo.setFlat(flat);
			vo.setFlng(flng);
			vo.setFcontent(fcontent);
			vo.setFimage(fimage);
			vo.setFprice1(Integer.parseInt(fprice1));
			vo.setFprice2(Integer.parseInt(fprice2));

		} catch (Exception e) {
			e.printStackTrace();
		}

			System.out.println("addADFV컨트롤 vo : " + vo);
			
		AdminService svc = new AdminServiceImpl();
		if (svc.addFestival(vo)) { // 정상적으로 등록됐으면 보드목록으로 간다
			try {
				resp.sendRedirect("adFvList.do"); // 저장하고 등록 추가된 정보 나옴
			} catch (Exception e) {

				e.printStackTrace();
			}
		} else {
			try {
				resp.sendRedirect("addFvForm.do");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}

}
