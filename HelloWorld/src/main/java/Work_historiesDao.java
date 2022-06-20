import org.seasar.doma.*;

import java.util.List;
@Dao
public interface Work_historiesDao {
    @Insert(include = {"employee_id"})
    int insert(Work_histories work_histories);

    @Update(include = {"project_id","work_start","work_end"})
    int update(Work_histories work_histories);

    @Delete
    int delete(Work_histories work_histories);

    @Select
    Work_histories selectById(Integer id);

    @Select
    List<Work_histories> selectByAll(Integer id);

    @Update(include = {"id","industry","system_sum","system_details","role","dev_environment"})
    int updateWorkHistory(Work_histories work_histories);
    @Update(include = {"id","project_id"})
    int updateProjectID(Work_histories work_histories);
    @Update(include = {"id","dev_scale"})
    int updateDevScale(Work_histories work_histories);
    @Update(include = {"id","work_start","work_end"})
    int updateWorkStartEnd(Work_histories work_histories);


}
