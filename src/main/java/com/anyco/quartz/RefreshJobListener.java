package com.anyco.quartz;

import com.anyco.utils.QuartzManager;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.HashMap;
import java.util.Map;

/**
 * 每天定时刷新系统缓存
 */
public class RefreshJobListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        ServletContext context = servletContextEvent.getServletContext();
        String basePath = context.getRealPath("/");
        Map<String, String> param = new HashMap<String, String>();
        param.put("basePath", basePath);
        QuartzManager.addJob("RefreshJob", "com.anyco.quartz.RefreshJob",
                "0 0 0 1 * ?", param); // [秒] [分] [小时] [日] [月] [周] [年]
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        QuartzManager.removeJob("RefreshJob");
    }
}
