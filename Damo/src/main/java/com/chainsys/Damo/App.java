package com.chainsys.Damo;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.FileSystemResource;

/**
 * Hello world!
 *
 */
public class App 
{
//	
//    public static void main( String[] args )
//    {
//        System.out.println( "Hello World!" );
//    }
	public static void main(String[] args) {
	//	BeanFactory beanFactory=new XmlBeanFactory(new FileSystemResource("spring.xml"));
//		Employee emp=(Employee) beanFactory.getBean("emp");    //lzazy init
//		Employee emp1=(Employee) beanFactory.getBean("emp");
		ApplicationContext bean=new ClassPathXmlApplicationContext("spring.xml");
		Employee emp=(Employee) bean.getBean("emp");    //lzazy init
		Employee emp1=(Employee) bean.getBean("emp");
		emp.getEmployee();                                     //class employee method called
		System.out.println(emp==emp1);
		
	}
}
