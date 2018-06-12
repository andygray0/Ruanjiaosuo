package com.wine.web.controller;

import java.lang.annotation.*;

@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.TYPE})
@Documented
@Inherited
public @interface OperateLogClassLevelAnnotation {

    String module() default "";

}
