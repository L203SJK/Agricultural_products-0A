package com.demo.dao;

import java.util.List;
import java.util.Map;

import com.demo.entity.Supplier;
import org.springframework.stereotype.Repository;

/**
 * 供应商dao
 * @author Administrator
 *
 */
@Repository
public interface SupplierDao {
	public int add(Supplier supplier);
	public int edit(Supplier supplier);
	public List<Supplier> findList(Map<String, Object> queryMap);
	public Integer getTotal(Map<String, Object> queryMap);
	public int delete(Long id);
}
