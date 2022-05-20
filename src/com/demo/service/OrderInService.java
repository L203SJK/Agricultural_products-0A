package com.demo.service;

import java.util.List;
import java.util.Map;

import com.demo.entity.OrderIn;
import org.springframework.stereotype.Service;

/**
 * 进货单service接口
 * @author Administrator
 *
 */
@Service
public interface OrderInService {
	public int add(OrderIn orderIn);
	public int edit(OrderIn orderIn);
	public List<OrderIn> findList(Map<String, Object> queryMap);
	public Integer getTotal(Map<String, Object> queryMap);
	public int delete(Long id);
}
