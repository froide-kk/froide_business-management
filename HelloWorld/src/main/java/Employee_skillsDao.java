import org.seasar.doma.*;

import java.util.List;

@Dao
public interface Employee_skillsDao {

    @Insert
    int insert(Employee_skills employee_skills);

    @Update
    int update(Employee_skills employee_skills);

    @Delete
    int delete(Employee_skills employee_skills);

    @Select
    List<Employee_skills> selectAll();

}
