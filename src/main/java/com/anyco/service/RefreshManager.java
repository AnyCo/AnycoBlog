package com.anyco.service;

import com.anyco.entity.Blog;
import com.anyco.entity.BlogType;
import com.anyco.entity.Blogger;
import com.anyco.entity.Link;
import com.anyco.utils.ResponseUtil;
import net.sf.json.JSONObject;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.WebApplicationContext;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Component
public class RefreshManager implements ApplicationContextAware {

    @Resource
    private BloggerService bloggerService;

    @Resource
    private BlogTypeService blogTypeService;

    @Resource
    private BlogService blogService;

    @Resource
    private LinkService linkService;

    private ApplicationContext applicationContext;
    /**
     * 管理员调用refresh
     *
     * @param response
     * @return
     * @throws Exception
     */
    public String refreshSystem(HttpServletResponse response) throws Exception {
        jobRefresh();
        JSONObject result = new JSONObject();
        result.put("success", true);
        ResponseUtil.write(response, result);
        return null;
    }


    /**
     * 刷新系统缓存
     */
    public void jobRefresh() throws Exception {

        WebApplicationContext webApplicationContext = ContextLoader.getCurrentWebApplicationContext();
        ServletContext application = webApplicationContext.getServletContext();

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


    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext=applicationContext;
    }
}
