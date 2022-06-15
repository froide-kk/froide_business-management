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
}
