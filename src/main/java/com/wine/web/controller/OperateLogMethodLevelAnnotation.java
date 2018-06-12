package com.wine.web.controller;

import java.lang.annotation.*;

@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.METHOD})
@Documented
@Inherited
public @interface OperateLogMethodLevelAnnotation {

    String method() default "";

}
