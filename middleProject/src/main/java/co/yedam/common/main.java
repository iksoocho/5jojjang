package co.yedam.common;

import co.yedam.cart.service.CartService;
import co.yedam.cart.serviceImpl.CartServiceImpl;

public class main {

	public static void main(String[] args) {


		
		CartService svc = new CartServiceImpl();
		String cid = "user1";
		
		System.out.println(svc.cartCnt(cid));
		
		
		
	}
	

}
