package co.yedam.common;

import java.util.List;

import co.yedam.wish.service.WishService;
import co.yedam.wish.service.WishVO;
import co.yedam.wish.serviceImpl.WishServiceImpl;

public class main {

	public static void main(String[] args) {


		WishService svc = new WishServiceImpl();
		
	     List <WishVO> list = svc.wishList("member");	
	     
	     System.out.println(list);
	}
	

}