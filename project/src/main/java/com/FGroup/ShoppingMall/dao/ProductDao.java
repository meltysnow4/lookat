package com.FGroup.ShoppingMall.dao;

import java.util.List;

import com.FGroup.ShoppingMall.dto.ProductDto;

public interface ProductDao {
	
	public List<ProductDto> productList();	//메소드의 이름이 mapper의 쿼리문 id가 됩니다.
	
	/*
	public int productInsert(String writer, String title, String content, String filename);
	
	public ProductDto productView(int no);
	
	public int productDelete(int no);
	*/
	
}
