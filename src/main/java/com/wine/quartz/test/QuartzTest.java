//package com.wine.quartz.test;
//
//
//import java.util.List;
//
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//
//import com.alibaba.fastjson.JSON;
//import com.wine.quartz.ScheduleTask;
//import com.wine.quartz.Service.TasksService;
//
//@ContextConfiguration(locations={"classpath:spring-quartz.xml"})
//@RunWith(SpringJUnit4ClassRunner.class)
//public class QuartzTest {
//
//    @Autowired
//    private TasksService tasksService;
//
//    @Test
//    public void addTask() throws InterruptedException{
//        System.out.println("test--------start----------");
//        ScheduleTask task=new ScheduleTask();
//        task.setExpression("0/2 * * * * ?");
//        task.setId("001");
//        task.setGroup("com.wine.quartz.job.MyJob");
//        task.setTrigger("findUserName");
//        task.setName("task1");
//        task.setParam(new Object[]{"zyc",22});
//        List<ScheduleTask> list= tasksService.getAllTask();
//        System.out.println(JSON.toJSONString(list));
//        Object[] pa =task.getParam();
//        System.out.println(pa[1].toString());
//      tasksService.addTask(task);
//        list= tasksService.getAllTask();
//        System.out.println(JSON.toJSONString(list));
//      Thread.sleep(1000*20);
//      System.out.println("重启定时任务");
//      task.setExpression("0/10 * * * * ?");
//      tasksService.reStartTask(task);
//        while(true){}
//    }
//}