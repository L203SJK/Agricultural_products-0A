package com.demo.dao;

import java.util.List;
import java.util.Map;

import com.demo.entity.SellReback;
import com.demo.entity.SellRebackDetail;
import org.springframework.stereotype.Repository;

/**
 * 销售退货单dao
 * @author Administrator
 *
 */
@Repository
public interface SellRebackDao {
	public int addDetail(SellRebackDetail sellRebackDetail);
	public int add(SellReback sellReback);
	public int edit(SellReback sellReback);
	public List<SellReback> findList(Map<String, Object> queryMap);
	public Integer getTotal(Map<String, Object> queryMap);
	public int delete(Long id);
	public List<Map<String,String>> getStats(String date);
}
