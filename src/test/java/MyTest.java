import com.otsbcs.pojo.Client;
import com.otsbcs.service.ClientService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MyTest {
    @Test
    public void test(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        ClientService clientServiceImpl = (ClientService) context.getBean("ClientServiceImpl");
        for (Client client : clientServiceImpl.queryAllClient()) {
            System.out.println(client);
            
        }
    }
}
