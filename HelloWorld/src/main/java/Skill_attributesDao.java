import org.seasar.doma.*;

import java.util.List;
@Dao
public interface Skill_attributesDao {
    @Insert
    int insert(Skill_attributes skillAttributes);

    @Update
    int update(Skill_attributes skillAttributes);

    @Delete
    int delete(Skill_attributes skillAttributes);

    @Select
    List<Skill_attributes> selectAll();


}
