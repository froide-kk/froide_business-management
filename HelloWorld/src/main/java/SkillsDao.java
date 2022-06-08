import org.seasar.doma.*;

import java.util.List;
@Dao
public interface SkillsDao {
    @Insert
    int insert(Skills skills);

    @Update
    int update(Skills skills);

    @Delete
    int delete(Skills skills);

    @Select
    List<Skills> selectAll();

    @Select
    List<Skills> select_os_All();

    @Select
    List<Skills> select_script_All();

    @Select
    List<Skills> select_db_All();
}
