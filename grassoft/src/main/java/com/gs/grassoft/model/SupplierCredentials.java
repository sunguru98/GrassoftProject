package com.gs.grassoft.model;

import javax.persistence.*;

@Entity
public class SupplierCredentials {
	@Id @GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int supplierId;
	private String supplierName, supplierEmailId, supplierAddress;
	private long supplierContactNo;

	public int getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}

	public String getSupplierName() {
		return supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}

	public String getSupplierEmailId() {
		return supplierEmailId;
	}

	public void setSupplierEmailId(String supplierEmailId) {
		this.supplierEmailId = supplierEmailId;
	}

	public String getSupplierAddress() {
		return supplierAddress;
	}

	public void setSupplierAddress(String supplierAddress) {
		this.supplierAddress = supplierAddress;
	}

	public long getSupplierContactNo() {
		return supplierContactNo;
	}

	public void setSupplierContactNo(long supplierContactNo) {
		this.supplierContactNo = supplierContactNo;
	}

}
