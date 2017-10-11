package com.gs.grassoft.dao;

import com.gs.grassoft.model.SupplierCredentials;

import java.util.List;

import org.springframework.stereotype.*;

@Service
public interface SupplierDAO {
	public boolean insertSupplier(SupplierCredentials supplierCredentials);
	public List <SupplierCredentials> allSuppliers();
}
