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
}
