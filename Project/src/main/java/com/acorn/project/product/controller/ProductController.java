package com.acorn.project.product.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.project.product.dao.ProductDao;
import com.acorn.project.product.dto.ProductDto;
import com.acorn.project.product.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService service;
	
	//상품 추가 요청 처리 
	@RequestMapping("/staff/product/insert")
	public ModelAndView insert(ProductDto dto, ModelAndView mView, HttpServletRequest request) {		
		//넘어가는 productId 설정
		service.addProduct(dto, mView, request);
		mView.setViewName("staff/product/insert");
		return mView;
	}
	
	//상품 추가 폼 요청 처리 
	@RequestMapping("/staff/product/insertForm")
	public String insertform() {	
		return "staff/product/insertForm";
	}
	
	@RequestMapping("/staff/product/delete")
	public ModelAndView delete(String productId, ModelAndView mView) {
		service.deleteProduct(productId);
		mView.setViewName("redirect:/staff/product/list.do");
		return mView;
	}
	
	//회원 수정 폼 요청 처리
	@RequestMapping("/staff/product/updateForm")
	public ModelAndView updateform(String productId, ModelAndView mView) {
		service.getProduct(productId, mView);
		mView.setViewName("staff/product/updateForm");
		return mView;
	}
	
	@RequestMapping("/staff/product/update")
	public String update(ProductDto dto) {
		service.updateProduct(dto);
		return "staff/product/update";

	}
	 
}
