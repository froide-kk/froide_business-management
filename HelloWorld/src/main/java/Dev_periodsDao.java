import org.seasar.doma.*;

import java.util.List;

@Dao
public interface Dev_periodsDao {

    @Insert
    int insert(Dev_periods dev_periods);

    @Update
    int update(Dev_periods dev_periods);

    @Delete
    int delete(Dev_periods dev_periods);



}
