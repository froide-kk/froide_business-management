import org.seasar.doma.*;

@Dao

public interface EmployeesWork_historiesDao {

    @Insert
    int insert(Employees employees);

    @Update
    int update(Employees employees);

    @Delete
    int delete(Employees employees);
    @Select
    EmployeesWork_histories selectById(Integer id);

}
