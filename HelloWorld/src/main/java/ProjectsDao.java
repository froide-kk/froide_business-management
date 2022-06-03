import org.seasar.doma.*;

import java.util.List;
@Dao
public interface ProjectsDao {
    @Insert
    int insert(Projects projects);

    @Update
    int update(Projects projects);

    @Delete
    int delete(Projects projects);

    @Select
    List<Projects> selectAll();
}
