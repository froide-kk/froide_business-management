import org.seasar.doma.*;

import java.util.List;

@Dao
public interface EmployeesDao {

    @Insert
    int insert(Employees employees);

    @Update
    int update(Employees employees);

    @Delete
    int delete(Employees employees);

    @Select
    List<Employees> selectAll();

    @Select
    List<Employees> selectByName(String name);

}
