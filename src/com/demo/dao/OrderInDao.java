package com.demo.dao;

import java.util.List;
import java.util.Map;

import com.demo.entity.OrderIn;
import org.springframework.stereotype.Repository;

import com.demo.entity.OrderInDetail;

/**
 * 进货单dao
 * @author Administrator
 *
 */
@Repository
public interface OrderInDao {
	public int add(OrderIn orderIn);
	public int addDetail(OrderInDetail orderInDetail);
	public int edit(OrderIn orderIn);
	public List<OrderIn> findList(Map<String, Object> queryMap);
	public Integer getTotal(Map<String, Object> queryMap);
	public int delete(Long id);
}
