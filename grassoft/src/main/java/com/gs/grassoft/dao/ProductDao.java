package com.gs.grassoft.dao;

import java.util.List;

import org.springframework.stereotype.*;
import com.gs.grassoft.model.ProductCredentials;

@Service
public interface ProductDao {
		
		public boolean insertProduct(ProductCredentials productCredentials);
		public List<ProductCredentials> allProducts();
	
}
