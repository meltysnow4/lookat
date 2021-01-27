package com.FGroup.ShoppingMall.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.FGroup.ShoppingMall.dao.ProductDao;

public class ProductViewCommand implements ProductCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		int no = Integer.parseInt(request.getParameter("no"));
		ProductDao productDao = sqlSession.getMapper(ProductDao.class);
		
		model.addAttribute("productDto", productDao.productView(no));
		
	}

}
