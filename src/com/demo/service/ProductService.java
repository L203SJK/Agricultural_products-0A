package com.demo.service;

import java.util.List;
import java.util.Map;

import com.demo.entity.Product;
import org.springframework.stereotype.Service;

/**
 * 商品service接口
 * @author Administrator
 *
 */
@Service
public interface ProductService {
	public int add(Product product);
	public int edit(Product product);
	public List<Product> findList(Map<String, Object> queryMap);
	public Integer getTotal(Map<String, Object> queryMap);
	public int delete(Long id);
}
