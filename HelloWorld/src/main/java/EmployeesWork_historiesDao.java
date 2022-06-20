import org.seasar.doma.*;

import java.util.List;

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
    @Select
    List<EmployeesWork_histories> selectByAll(Integer id);

    @Update(include = {"id","industry","project_id","work_start","work_end","system_sum","system_details","role","dev_environment"})
    int updateWorkHistory(EmployeesWork_histories e_w_histories);
    @Update(include = {"id","project_id"})
    int updateProjectID(EmployeesWork_histories e_w_histories);
    @Update(include = {"id","dev_scale"})
    int updateDevScale(EmployeesWork_histories e_w_histories);
}
