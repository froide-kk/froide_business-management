import org.seasar.doma.*;

import java.sql.Date;
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
    List<Employees> selectAllDes();

    @Select
    List<Employees> selectByName(String name);
    @Select
    Employees selectById(Integer id);

    @Select
    List<Employees> selectByDepartment(Integer department_id);

    @Select
    List<Employees> selectByAdmin();

    @Select
    List<Employees> selectByOrdinary();

    @Update(sqlFile = true)
    int updateAdmin(Integer id);
}
