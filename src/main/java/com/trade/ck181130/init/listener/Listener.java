package com.trade.ck181130.init.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.trade.ck181130.user.mapper.UserMapper;
import com.trade.ck181130.user.model.UserModel;
import com.trade.ck181130.util.isEmpty.IsEmpty;
import com.trade.ck181130.util.md5.MD5;

/**
 * Application Lifecycle Listener implementation class Listener
 *
 */
public class Listener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public Listener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    	WebApplicationContext webApplicationContext = WebApplicationContextUtils.getWebApplicationContext(sce.getServletContext());
        UserMapper<UserModel> userMapper = (UserMapper<UserModel>) webApplicationContext.getBean("userMapper");
        UserModel usermodel = new UserModel();
        usermodel.setUsername("admin");
        usermodel.setPassword(MD5.mmd("admin"));
        usermodel.setUsercode("admin");
        usermodel.setAdmin("1");
        if(IsEmpty.isEmpty(userMapper.selectAll(usermodel))) {
        	userMapper.insert(usermodel);
        }
    }
	
}
