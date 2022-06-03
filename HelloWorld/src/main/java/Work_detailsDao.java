import org.seasar.doma.*;

import java.util.List;
@Dao
public interface Work_detailsDao {
    @Insert
    int insert(Work_details work_details);

    @Update
    int update(Work_details work_details);

    @Delete
    int delete(Work_details work_details);

    @Select
    List<Work_details> selectAll();
}
