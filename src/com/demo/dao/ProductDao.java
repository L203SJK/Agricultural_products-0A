package com.demo.dao;

import java.util.List;
import java.util.Map;

import com.demo.entity.Product;
import org.springframework.stereotype.Repository;

/**
 * 商品dao
 * @author Administrator
 *
 */
@Repository
public interface ProductDao {
	public int add(Product product);
	public int edit(Product product);
	public List<Product> findList(Map<String, Object> queryMap);
	public Integer getTotal(Map<String, Object> queryMap);
	public int delete(Long id);
}
