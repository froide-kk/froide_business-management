import org.seasar.doma.*;

import java.util.List;
@Dao
public interface Work_historiesDao {
    @Insert
    int insert(Work_histories work_histories);

    @Update
    int update(Work_histories work_histories);

    @Delete
    int delete(Work_histories work_histories);

    @Select
    List<Work_histories> selectAll();
}
