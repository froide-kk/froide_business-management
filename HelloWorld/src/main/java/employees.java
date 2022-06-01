import org.seasar.doma.*;
@Entity(metamodel = @Metamodel)
public class employees {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;
    String name;
    String first_name;
    String last_name;
    String email;
    Integer password_hash;
    String birthday;
    String join_date;
    Integer management_flag;
    String password;

    public Integer getId(){
        return id;
    }

    public String getName(){
        return name;
    }

    public String getFirst_name(){
        return first_name;
    }

    public String getLast_name(){
        return last_name;
    }

    public String getBirthday(){
        return birthday;
    }

    public Integer getManagement_flag(){
        return management_flag;
    }

    public void setManagement_flag(Integer management_flag){
        this.management_flag = management_flag;
    }

    public String getJoin_date(){
        return join_date;
    }
}