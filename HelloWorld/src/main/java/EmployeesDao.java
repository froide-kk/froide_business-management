import org.seasar.doma.*;

import java.sql.Date;
import java.util.List;

@Dao
public interface EmployeesDao {

    @Insert
    int insert(Employees employees);

    @Update
    int update(Employees employees);

    @Delete
    int delete(Employees employees);

    @Select
    List<Employees> selectAll();

    @Select
    List<Employees> selectAllDes();

    @Select
    List<Employees> selectByName(String name);

    @Select
    Employees selectById(Integer id);

    @Select
    List<Employees> selectByDepartment(Integer department_id);

    @Select
    List<Employees> selectByAdmin();

    @Select
    List<Employees> selectByOrdinary();

    @Update(sqlFile = true)
    int updateAdmin(Integer id);


    @Update(sqlFile = true)
    int updateAdminOrd(Integer id);

    @Update(sqlFile = true)
    int updateEmpDelete(Integer id);

    @Select
    List<Employees> selectOrdinaryByName(String name);

    @Select
    List<Employees> selectByNotDelete();

    @Select
    List<Employees> selectDeleteEmpByName(String name);

    @Select
    List<Employees> selectByDeleteEmp();

    @Update(sqlFile = true)
    int updateEmpReAdd(Integer id);

    @Insert(include = {"name", "department_id", "join_date", "email"})
    int insertEmp(Employees employees);

    @Update(include = {"name","birthday","address","final_education","license"})
    int update_workHistry(Employees employees);
}

