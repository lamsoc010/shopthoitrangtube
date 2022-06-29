package TestListener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class TestServletContextListenner
 *
 */
@WebListener
public class TestServletContextListenner implements ServletContextListener {

    public TestServletContextListenner() {
    }

    public void contextDestroyed(ServletContextEvent arg0)  { 
    	System.out.println("ServletContextListener destroyed");
    }

    public void contextInitialized(ServletContextEvent arg0)  { 
    	System.out.println("ServletContextListener started");
    }
	
}
