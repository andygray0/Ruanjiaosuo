package com.wine.web.controller;

import com.wine.constants.Constants;
import com.wine.model.OperateLog;
import com.wine.service.OperateLogService;
import com.wine.utils.StringKit;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import sun.reflect.generics.tree.ClassSignature;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Date;

/**
 * Created by acer on 2018/2/5.
 */

@Aspect
@Component
public class LogAopAspect {

    @Autowired
    private OperateLogService operateLogService;


    @Pointcut("execution(* com.wine.web.controller.*.*(..))")
    private void controllerAspect() {
    }//定义一个切入点

    @After("controllerAspect()")
    public void after(JoinPoint joinPoint) throws Throwable {

        OperateLogClassLevelAnnotation classAnno = joinPoint.getTarget().getClass().getAnnotation(OperateLogClassLevelAnnotation.class);
        String module = "";
        if(null != classAnno){
            module = classAnno.module();
        }

        Signature signature = joinPoint.getSignature();
        MethodSignature methodSignature = (MethodSignature)signature;
        Method targetMethod = methodSignature.getMethod();

        OperateLogMethodLevelAnnotation anno = targetMethod.getAnnotation(OperateLogMethodLevelAnnotation.class);
        if(anno != null){
            // 记录操作日志

            // 获取session中当前用户
            HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
            HttpSession session = request.getSession();
            Object userNameObject = session.getAttribute(Constants.CURRENT_USER);
            String userName = userNameObject == null ? "wz" : userNameObject.toString(); // TODO

            OperateLog log = new OperateLog();
            log.setUserName(userName)
                    .setOperateTime(new Date())
                    .setModule(module)
                    .setRequestUri(request.getRequestURI())
                    .setRequestParams(request.getParameterMap().toString())
                    .setController(joinPoint.getTarget().getClass().getSimpleName())
                    .setMethodName(joinPoint.getSignature().getName());

            Method[] fields = anno.getClass().getDeclaredMethods();
            for(Method method : fields){
                String methodName = method.getName();
                if(!"equals".equals(methodName) && !"toString".equals(methodName) && !"hashCode".equals(methodName) && !"annotationType".equals(methodName)){
                    Object value = method.invoke(anno);
                    log.getClass().getDeclaredMethod("set" + StringKit.firstLetterToUpper(methodName), value.getClass()).invoke(log, value);
                }
            }

            operateLogService.insertOne(log);

        }

    }


}
