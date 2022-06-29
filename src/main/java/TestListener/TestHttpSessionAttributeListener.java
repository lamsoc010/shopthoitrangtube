package TestListener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

/**
 * Application Lifecycle Listener implementation class TestHttpSessionAttributeListener
 *
 */
@WebListener
public class TestHttpSessionAttributeListener implements HttpSessionAttributeListener {

    public TestHttpSessionAttributeListener() {
        // TODO Auto-generated constructor stub
    }

    public void attributeAdded(HttpSessionBindingEvent arg0)  { 
    	String attributeName = arg0.getName();
		Object attributeValue = arg0.getValue();
		System.out.println("Attribute added : " + attributeName + " : " + attributeValue);
    }

    public void attributeRemoved(HttpSessionBindingEvent arg0)  { 
    	String attributeName = arg0.getName();
		Object attributeValue = arg0.getValue();
		System.out.println("Attribute removed : " + attributeName + " : " + attributeValue);
    }

    public void attributeReplaced(HttpSessionBindingEvent arg0)  { 
    	String attributeName = arg0.getName();
		Object attributeValue = arg0.getValue();
		System.out.println("Attribute replaced : " + attributeName + " : " + attributeValue);
    }
	
}
