package com.spx.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.UUID;
@Controller
public class BaseController {

    /*
    * 得到ServletRequestAttributes实例对象
    * */
    protected ServletRequestAttributes getServletRequestAttributes(){
        return ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes());
    }

    /*
    * 得到HttpServletRequest实例对象
    * */
    protected HttpServletRequest getHttpServletRequest(){
        return getServletRequestAttributes().getRequest();
    }

    /*
    * 得到HttpSession实例对象
    * */
    protected HttpSession getHttpSession(){
        return getHttpServletRequest().getSession();
    }


    /*
    * 得到ServletContext实例对象
    * */
    protected ServletContext getServletContext(){
        return getHttpSession().getServletContext();
    }

    /*
    * 产生随机
    * */
    protected String getUuid(){
        return UUID.randomUUID().toString().replace("-","");
    }
}


