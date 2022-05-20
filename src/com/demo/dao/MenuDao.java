package com.demo.dao;

import java.util.List;
import java.util.Map;

import com.demo.entity.Menu;
import org.springframework.stereotype.Repository;

/**
 * 菜单管理dao
 * @author llq
 *
 */
@Repository
public interface MenuDao {
	public int add(Menu menu);
	public List<Menu> findList(Map<String, Object> queryMap);
	public List<Menu> findTopList();
	public int getTotal(Map<String, Object> queryMap);
	public int edit(Menu menu);
	public int delete(Long id);
	public List<Menu> findChildernList(Long parentId);
	public List<Menu> findListByIds(String ids);
}
