package com.demo.dao;

import java.util.List;
import java.util.Map;

import com.demo.entity.Sell;
import com.demo.entity.SellDetail;
import org.springframework.stereotype.Repository;

/**
 * 销售单dao
 * @author Administrator
 *
 */
@Repository
public interface SellDao {
	public int addDetail(SellDetail sellDetail);
	public int add(Sell sell);
	public int edit(Sell sell);
	public List<Sell> findList(Map<String, Object> queryMap);
	public Integer getTotal(Map<String, Object> queryMap);
	public int delete(Long id);
	public List<Map<String,String>> getStats(String date);
}
