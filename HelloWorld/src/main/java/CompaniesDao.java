import org.seasar.doma.*;

import java.util.List;

    @Dao
    public interface CompaniesDao {

        @Insert
        int insert(Companies companies);

        @Update
        int update(Companies companies);

        @Delete
        int delete(Companies companies);


        @Insert(include = {"name"})
        int insertCoｍpanyName(Companies companies);

        @Select
        List<Companies> selectAll();
    }


