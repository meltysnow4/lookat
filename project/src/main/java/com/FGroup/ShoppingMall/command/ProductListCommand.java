package com.FGroup.ShoppingMall.command;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.FGroup.ShoppingMall.dao.ProductDao;

public class ProductListCommand implements ProductCommand {

	
	
	@Override
	public void execute(SqlSession sqlSession, Model model) {

		ProductDao productDao = sqlSession.getMapper(ProductDao.class);
		model.addAttribute("list", productDao.productList());
		
	}

}
