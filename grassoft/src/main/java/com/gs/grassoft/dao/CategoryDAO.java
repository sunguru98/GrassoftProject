package com.gs.grassoft.dao;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import java.util.*;
import com.gs.grassoft.model.CategoryCredentials;

@Service
public interface CategoryDAO {
	public boolean insertCategory(CategoryCredentials categoryCredentials);
	
	public List<CategoryCredentials> allCategory();
	
	public boolean deleteCategory(long categoryId);
	
	/*public CategoryCredentials singleCategory(long categoryId);*/
}
