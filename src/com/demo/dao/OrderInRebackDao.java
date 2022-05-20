package com.demo.dao;

import java.util.List;
import java.util.Map;

import com.demo.entity.OrderInReback;
import com.demo.entity.OrderInRebackDetail;
import org.springframework.stereotype.Repository;

/**
 * 进货退货单dao
 * @author Administrator
 *
 */
@Repository
public interface OrderInRebackDao {
	public int add(OrderInReback orderInReback);
	public int edit(OrderInReback orderInReback);
	public List<OrderInReback> findList(Map<String, Object> queryMap);
	public Integer getTotal(Map<String, Object> queryMap);
	public int delete(Long id);
	public int addDetail(OrderInRebackDetail orderInRebackDetail);
}
