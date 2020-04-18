import com.zhuguangjie.dao.IDeptDAO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath*:spring*.xml")
public class TestDeptDao{
    @Autowired
    private IDeptDAO deptDAO;
    @Test
    public void Test(){
        Dept dept=new Dept();
        dept.setDeptNo(11);
        dept.setdName("1");
        dept.setLoc("1");
        deptDAO.addDept(dept);
    }
}