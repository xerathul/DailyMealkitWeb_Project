package com.acorn.project.mealkit.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.project.mealkit.dto.MealkitContentDto;
import com.acorn.project.mealkit.dto.MealkitDto;
import com.acorn.project.mealkit.service.MealkitService;

@Controller
public class MealkitController {
	@Autowired MealkitService service;
	
	//밀키트홈
	@RequestMapping(value = "/mealkit/mealkit_home")
	public String allList(HttpServletRequest request,MealkitDto dto) {
		
		service.allList(request,dto);
		
		return "mealkit/mealkit_home";
	}
	//밀키트한국
	@RequestMapping("/mealkit/mealkit_k")
	public String kList(HttpServletRequest request,MealkitDto dto) {
		dto.setProductCate("Korean");
		service.allList(request,dto);
		return "mealkit/mealkit_k";
	}
	//밀키트중국
	@RequestMapping(value = "/mealkit/mealkit_c")
	public String cList(HttpServletRequest request,MealkitDto dto) {
		dto.setProductCate("Chinese");
		service.allList(request,dto);
		
		return "mealkit/mealkit_c";
	}
	//밀키트일본
	@RequestMapping("/mealkit/mealkit_j")
	public String jList(HttpServletRequest request,MealkitDto dto) {
		dto.setProductCate("Japanese");
		service.allList(request,dto);

		return "mealkit/mealkit_j";
	}
	//밀키트서양
	@RequestMapping("/mealkit/mealkit_w")
	public String wList(HttpServletRequest request,MealkitDto dto) {
		dto.setProductCate("Western");
		service.allList(request,dto);

		return "mealkit/mealkit_w";
	}
	
	//밀키트 디테일
	@RequestMapping(value = "/mealkit/detail", method = RequestMethod.GET)
	public ModelAndView detail(ModelAndView mView, @RequestParam String productId) {
		// detail 페이지에 필요한 data를 productId 으로 가져와, ModelAndView 에 저장
		service.getDetail(mView, productId);
		mView.setViewName("mealkit/detail");
		return mView;
	}
	
	// 상세 내용 작성
	@RequestMapping("/mealkit/private/insertform")
	public String insertForm() {
		
		return "mealkit/insertform";
	}
	
	
	//상세 내용 저장 요청 처리 
	@RequestMapping("/mealkit/private/insert")
	public ModelAndView insert(MealkitContentDto dto2) {
		ModelAndView mView = new ModelAndView();
		mView.setViewName("mealkit/insert");
		mView.addObject("productId2", dto2.getProductId2());
		service.saveContent(dto2);
		return mView;
	}
	
	//삭제 요청 
	@RequestMapping("/mealkit/private/delete")
	public String delete(@RequestParam String productId, HttpServletRequest request) {
		request.setAttribute("productId", productId);
		service.deleteContent(productId, request);
		return "/mealkit/delete2";
	}
	
	@RequestMapping("/mealkit/private/delete2")
	public String delete2(@RequestParam String productId, HttpServletRequest request) {
		request.getAttribute(productId);
		return "/mealkit/delete2";
	}
	
	//상세 내용 수정
	@RequestMapping("/mealkit/private/updateform")
	public String updateForm() {
		
		return "mealkit/updateform";
	}
	
	//상세 내용 수정 요청 처리
	@RequestMapping("/mealkit/private/update")
	public ModelAndView update(MealkitContentDto dto2) {
		ModelAndView mView = new ModelAndView();
		mView.setViewName("mealkit/update");
		mView.addObject("productId2", dto2.getProductId2());
		service.updateContent(dto2);
		return mView;
	}
	
	//밀키트 인기순
	@RequestMapping(value = "/mealkit/bestProduct")
	public String bestOrder(HttpServletRequest request, MealkitDto dto) {
		
		dto.setOrder("best");
		service.allList(request,dto);
		
		return "mealkit/mealkit_home";
	}
	//밀키트 최신순
	@RequestMapping(value = "/mealkit/newProduct")
	public String newOrder(HttpServletRequest request, MealkitDto dto) {
		
		dto.setOrder("new");
		service.allList(request,dto);
		
		return "mealkit/mealkit_home";
	}
	

}

