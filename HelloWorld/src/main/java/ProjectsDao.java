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

    @Select
    List<Projects> selectProjectAll();

    @Update(sqlFile = true)
    int update_delete_project(Integer id);

    @Insert(include = {"name","company_id"})
    int insertProject(Projects projects);
}

