import org.seasar.doma.*;

import java.util.List;

@Dao
public interface CareerDao {
    @Insert
    int insert(main main);

    @Update
    int update(main main);

    @Delete
    int delete(main main);

    @Select
    main selectById(Integer var1);

    @Select
    List<main> selectAll();

    @Select
    List<main> selectByName(String var1);

    @Select
    List<main> selectByAuthor(String var1);
}
