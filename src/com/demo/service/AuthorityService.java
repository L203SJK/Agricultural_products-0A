package com.demo.service;

import java.util.List;

import com.demo.entity.Authority;
import org.springframework.stereotype.Service;

/**
 * 权限service接口
 * @author llq
 *
 */
@Service
public interface AuthorityService {
	public int add(Authority authority);
	public int deleteByRoleId(Long roleId);
	public List<Authority> findListByRoleId(Long roleId);
}
