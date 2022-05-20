package com.demo.dao;

import java.util.List;

import com.demo.entity.Authority;
import org.springframework.stereotype.Repository;

/**
 * 权限实现类dao
 * @author llq
 *
 */
@Repository
public interface AuthorityDao {
	public int add(Authority authority);
	public int deleteByRoleId(Long roleId);
	public List<Authority> findListByRoleId(Long roleId);
}
