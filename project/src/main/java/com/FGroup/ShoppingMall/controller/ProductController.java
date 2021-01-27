package com.FGroup.ShoppingMall.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.FGroup.ShoppingMall.command.ProductListCommand;
import com.FGroup.ShoppingMall.command.ProductViewCommand;

@Controller
public class ProductController {

	@Autowired
	private SqlSession sqlSession;

	private ProductListCommand productListCommand;
	private ProductViewCommand productViewCommand;

	
	@Autowired
	public void setCommand(ProductListCommand productListCommand,
						   ProductViewCommand productViewCommand) {
		
		this.productListCommand = productListCommand;
		this.productViewCommand = productViewCommand;
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "index";
	}

	@RequestMapping(value = "productListPage.do", method = RequestMethod.GET)
	public String productListPage(Model model) {
		productListCommand.execute(sqlSession, model);
		return "products/productListPage";
	}
	@RequestMapping(value="productViewPage.do", method=RequestMethod.GET)
	public String productViewPage(HttpServletRequest request, Model model) {
		
		model.addAttribute("request", request);
		productViewCommand.execute(sqlSession, model);
		return "products/productViewPage";
	}
}
