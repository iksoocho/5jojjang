package co.yedam.wish.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.yedam.common.Command;
import co.yedam.wish.service.WishService;
import co.yedam.wish.service.WishVO;
import co.yedam.wish.serviceImpl.WishServiceImpl;

public class DrewWishListControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		
		
		String mid = req.getParameter("mid");
		
		WishService svc = new WishServiceImpl();
		
		List<WishVO> list= svc.wishList(mid);
		
		System.out.println(mid);
		System.out.println(list);
		
		Gson gson = new GsonBuilder().create();
		
		String json = gson.toJson(list);  
		
		try {
			resp.setCharacterEncoding("UTF-8");   
			resp.setContentType("text/json charset=UTF-8");  
			resp.getWriter().print(json);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		
		
		
	}
 
}
