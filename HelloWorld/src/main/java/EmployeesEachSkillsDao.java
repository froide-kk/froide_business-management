import org.seasar.doma.*;

import java.util.List;

@Dao
public interface EmployeesEachSkillsDao {
    @Select
    List<EmployeesEachSkills> select_db_All(Integer id);
    @Select
    List<EmployeesEachSkills> select_os_All(Integer id);
    @Select
    List<EmployeesEachSkills> select_script_All(Integer id);
    @Insert
    int insert(EmployeesEachSkills employeesEachSkills);

    @Update
    int update(EmployeesEachSkills employeesEachSkills);

    @Delete
    int delete(EmployeesEachSkills employeesEachSkills);

    @Update(include= {"skill_level"})
    int updateOS(EmployeesEachSkills empEachSkills);
}
