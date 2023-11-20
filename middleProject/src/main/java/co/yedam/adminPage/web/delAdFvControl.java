package co.yedam.adminPage.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.yedam.adminPage.service.AdminService;
import co.yedam.adminPage.serviceImpl.AdminServiceImpl;
import co.yedam.common.Command;


public class delAdFvControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
	String fcode = req.getParameter("fcode");
			
		
		AdminService svc = new AdminServiceImpl();
		
		Map<String, String> map = new HashMap<>();
		
		if (svc.removeFestival(fcode)) {  
			try {
				map.put("retCode", "OK");
				//resp.sendRedirect("adFvList.do"); // 저장하고 등록 추가된 정보 나옴
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				map.put("retCode", "NG");
				//resp.sendRedirect("modifyAdFvForm.do");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		

		
		Gson gson = new GsonBuilder().create();
		try {
			resp.getWriter().print(gson.toJson(map));
		} catch (Exception e) {
			e.printStackTrace();
		}

		

		
	} //execute

}
