package com.anyco.service.impl;


import com.anyco.dao.BloggerDao;
import com.anyco.entity.Blogger;
import com.anyco.service.BloggerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * 博主Service实现类
 */
@Service("bloggerService")
public class BloggerServiceImpl implements BloggerService {

	@Resource
	private BloggerDao bloggerDao;

	public Blogger find() {
		return bloggerDao.find();
	}

	public Blogger getByUserName(String userName) {
		return bloggerDao.getByUserName(userName);
	}

	public Integer update(Blogger blogger) {
		return bloggerDao.update(blogger);
	}
	
	
}
