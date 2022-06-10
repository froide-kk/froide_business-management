import org.seasar.doma.*;

import java.util.List;

@Dao
public interface Dev_period_phasesDao {

    @Insert
    int insert(Dev_period_phases dev_period_phases);

    @Update
    int update(Dev_period_phases dev_period_phases);

    @Delete
    int delete(Dev_period_phases dev_period_phases);


}
