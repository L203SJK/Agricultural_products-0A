package com.demo.service;

import java.util.List;
import java.util.Map;

import com.demo.entity.Sell;
import org.springframework.stereotype.Service;

/**
 * 销售单service接口
 * @author Administrator
 *
 */
@Service
public interface SellService {
	public int add(Sell sell);
	public int edit(Sell sell);
	public List<Sell> findList(Map<String, Object> queryMap);
	public Integer getTotal(Map<String, Object> queryMap);
	public int delete(Long id);
	public List<Map<String,String>> getStats(String date);
}
