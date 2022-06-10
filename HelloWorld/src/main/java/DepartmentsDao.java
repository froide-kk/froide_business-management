import org.seasar.doma.*;

import java.util.List;

@Dao
public interface DepartmentsDao {

        @Insert
        int insert(Employees employees);

        @Update
        int update(Employees employees);

        @Delete
        int delete(Employees employees);

        @Select
        List<Departments> selectAll();

        @Select
        List<Employees> selectById(Integer id);

}
