package com.anyco.service;


import com.anyco.entity.Blog;
import com.anyco.entity.BlogType;
import com.anyco.entity.Blogger;
import com.anyco.entity.Link;
import com.anyco.quartz.RefreshJob;
import org.apache.log4j.Logger;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.List;

/**
 * 初始化组件 把博主信息 根据博客类别分类信息 根据日期归档分类信息
 * 存放到application中，提高页面请求性能
 */
@Component
public class InitComponent implements ServletContextListener,ApplicationContextAware {

    private static ApplicationContext applicationContext;

    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        // TODO Auto-generated method stub
        this.applicationContext=applicationContext;
    }

    public void contextInitialized(ServletContextEvent servletContextEvent) {
        ServletContext application=servletContextEvent.getServletContext();

        BloggerService bloggerService=(BloggerService) applicationContext.getBean("bloggerService");
        Blogger blogger=bloggerService.find(); // 查询博主信息
        blogger.setPassword(null);
        application.setAttribute("blogger", blogger);

        BlogTypeService blogTypeService=(BlogTypeService) applicationContext.getBean("blogTypeService");
        List<BlogType> blogTypeCountList=blogTypeService.countList(); // 查询博客类别以及博客的数量
        application.setAttribute("blogTypeCountList", blogTypeCountList);

        BlogService blogService=(BlogService) applicationContext.getBean("blogService");
        List<Blog> blogCountList=blogService.countList(); // 根据日期分组查询博客
        application.setAttribute("blogCountList", blogCountList);

        LinkService linkService=(LinkService) applicationContext.getBean("linkService");
        List<Link> linkList=linkService.list(null); // 查询所有的友情链接信息
        application.setAttribute("linkList", linkList);
    }

    public void contextDestroyed(ServletContextEvent sce) {
        // TODO Auto-generated method stub

    }

}
