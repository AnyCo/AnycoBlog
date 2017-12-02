package com.anyco.quartz;


import com.anyco.service.RefreshManager;
import org.apache.log4j.Logger;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import javax.annotation.Resource;


/**
 * 刷新系统缓存的定时任务
 */
public class RefreshJob implements Job {
    private static Logger logger = Logger.getLogger(RefreshJob.class);

    @Resource
    private RefreshManager refreshManager;

    @Override
    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {
        try {
            logger.info("RefreshJob begin to work");
            refreshManager.jobRefresh();
            logger.info("RefreshJob work complete");
        } catch (Exception e) {
            e.printStackTrace();
            logger.info("定时任务刷新系统时出错");
        }

    }


}
