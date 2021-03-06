package com.acorn.project.cart.dao;


import java.util.List;

import com.acorn.project.cart.dto.CartDto;

public interface CartDao {
	public void insert(CartDto dto);
	public List<CartDto> cartList(String id);
	public void delete(int cart_id); //개별상품 삭제
	public void deleteAll(String id); //로그인된 사용자의 장바구니 전체 삭제
	public void updateCart(CartDto dto);
	
}