package com.demo.service;

import java.util.List;
import java.util.Map;

import com.demo.entity.OrderInReback;
import org.springframework.stereotype.Service;

/**
 * 进货退货单service接口
 * @author Administrator
 *
 */
@Service
public interface OrderInRebackService {
	public int add(OrderInReback orderInReback);
	public int edit(OrderInReback orderInReback);
	public List<OrderInReback> findList(Map<String, Object> queryMap);
	public Integer getTotal(Map<String, Object> queryMap);
	public int delete(Long id);
}
