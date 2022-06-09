import org.seasar.doma.*;

import java.sql.Date;

@Entity(metamodel = @Metamodel)
public class Employees {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;
    String name;
    String first_name;
    String last_name;
    String email;
    Integer password_hash;
    String birthday;

    java.sql.Date join_date;
    byte management_flag;

    Integer department_id;

    String license;

    public String getLicense() {
        return license;
    }

    public void setLicense(String license) {
        this.license = license;
    }



    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getPassword_hash() {
        return password_hash;
    }

    public void setPassword_hash(Integer password_hash) {
        this.password_hash = password_hash;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public Date getJoin_date() {
        return join_date;
    }

    public void setJoin_date(Date join_date) {
        this.join_date = join_date;
    }

    public byte getManagement_flag() {
        return management_flag;
    }

    public void setManagement_flag(byte management_flag) {
        this.management_flag = management_flag;
    }

    public Integer getDepartment_id() {
        return department_id;
    }

    public void setDepartment_id(Integer department_id) {
        this.department_id = department_id;
    }


}