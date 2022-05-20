package com.demo.service;

import java.util.List;
import java.util.Map;

import com.demo.entity.Supplier;
import org.springframework.stereotype.Service;

/**
 * 供应商service接口
 * @author Administrator
 *
 */
@Service
public interface SupplierService {
	public int add(Supplier supplier);
	public int edit(Supplier supplier);
	public List<Supplier> findList(Map<String, Object> queryMap);
	public Integer getTotal(Map<String, Object> queryMap);
	public int delete(Long id);
}
