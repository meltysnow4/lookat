package com.FGroup.ShoppingMall.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.FGroup.ShoppingMall.command.ProductListCommand;

@Controller
public class ProductController {

	@Autowired
	private SqlSession sqlSession;

	private ProductListCommand productListCommand;

	
	@Autowired
	public void setCommand(ProductListCommand productListCommand) {
		this.productListCommand = productListCommand;
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
}
