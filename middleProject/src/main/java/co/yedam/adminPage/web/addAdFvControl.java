package co.yedam.adminPage.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.adminPage.service.AdminService;
import co.yedam.adminPage.service.AdminVO;
import co.yedam.adminPage.serviceImpl.AdminServiceImpl;
import co.yedam.common.Command;


public class addAdFvControl implements Command {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {

		AdminVO vo = new AdminVO();
		
		req.getMethod().equals("GET");
			
			String fcode = req.getParameter("fcode");
			String fname = req.getParameter("fname");
			String fphone = req.getParameter("fphone");
			String fsdate = req.getParameter("fsdate");
			String fedate = req.getParameter("fedate");
			String fcontent = req.getParameter("fcontent");
			String fimage = req.getParameter("fimage");
			String fprice1 = req.getParameter("fprice1");
			String fprice2 = req.getParameter("fprice2");

			// form에 action넣고 일로 넘어온거임.
			vo.setFcode(fcode);
			vo.setFname(fname);
			vo.setFphone(fphone);
			vo.setFsdate(fsdate);
			vo.setFedate(fedate);
			vo.setFcontent(fcontent);
			vo.setFimage(fimage);
			vo.setFprice1(Integer.parseInt(fprice1));
			vo.setFprice2(Integer.parseInt(fprice2));
			
			
				AdminService svc = new AdminServiceImpl();
				if(svc.addFestival(vo)) { //정상적으로 등록됐으면 보드목록으로 간다
					try {
						resp.sendRedirect("adFvList.do"); // 저장하고 등록 추가된 정보 나옴
				} catch (Exception e) {

						e.printStackTrace();
					}
				}else {
					try {
						resp.sendRedirect("addFvForm.do");
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
					

			}
			

			

	}
