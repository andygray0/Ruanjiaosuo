package com.wine.service.base;

import java.lang.annotation.*;

@Documented
@Inherited
@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.TYPE, ElementType.FIELD})
public @interface DaoAnnotation {

    String model();

    String dao();

    String ssf();

}
