package TestListener;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class TestServletContextAttributeListener
 *
 */
@WebListener
public class TestServletContextAttributeListener implements ServletContextAttributeListener {

    /**
     * Default constructor. 
     */
    public TestServletContextAttributeListener() {
    }

    /*
    * Phương thức này được gọi khi một thuộc tính được thêm vào đối tượng
    ServletContext */
    public void attributeAdded(ServletContextAttributeEvent arg0)  {
    	System.out.println("Them thuoc tinh");
    }

    /*
    * Phương thức này được gọi khi một thuộc tính bị xóa khỏi đối tượng
    ServletContext */
    public void attributeRemoved(ServletContextAttributeEvent arg0)  { 
    	System.out.println("Xoa thuoc tinh");
    }

    /*
    * Phương thức này được gọi khi một thuộc tính được thay thế trong đối tượng
    ServletContext */
    public void attributeReplaced(ServletContextAttributeEvent arg0)  { 
    	System.out.println("Thay doi thuoc tinh");
    }
	
}
