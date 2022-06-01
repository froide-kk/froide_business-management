import org.seasar.doma.*;

import java.awt.print.Book;
import java.util.List;

@Dao
public interface CareerDao {
    @Insert
    int insert(Career career);

    @Update
    int update(Career career);

    @Delete
    int delete(Career career);

    @Select
    Book selectById(Integer id);

    @Select
    List<Book> selectAll();

    @Select
    List<Book> selectByName(String name);

    @Select
    List<Book> selectByAuthor(String author);
}
