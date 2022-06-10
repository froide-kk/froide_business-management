import org.seasar.doma.*;

import java.sql.Date;

@Entity(metamodel = @Metamodel)
public class EmployeesWork_histories {

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getFinal_education() {
        return final_education;
    }

    public void setFinal_education(String final_education) {
        this.final_education = final_education;
    }

    public String getLicense() {
        return license;
    }

    public void setLicense(String license) {
        this.license = license;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    //Employeesテーブル
    Integer id;

    String name;
    String birthday;
    String final_education;
    String license;
    String address;


    //Work_historiesテーブル
    java.sql.Date work_start;
    java.sql.Date work_end;

    Integer employee_id;



    public Integer getEmployee_id() {
        return employee_id;
    }

    public void setEmployee_id(Integer employee_id) {
        this.employee_id = employee_id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    public Date getWork_start() {
        return work_start;
    }

    public void setWork_start(Date work_start) {
        this.work_start = work_start;
    }

    public Date getWork_end() {
        return work_end;
    }

    public void setWork_end(Date work_end) {
        this.work_end = work_end;
    }



}
