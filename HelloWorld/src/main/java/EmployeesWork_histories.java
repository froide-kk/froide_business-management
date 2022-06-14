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
    String industry;
    String system_sum;
    String projects_name;
    String dev_scale;

    String system_details;

    String dev_environment;


    String role;
    //Work_historiesテーブル
    java.sql.Date work_start;
    java.sql.Date work_end;

    Integer employee_id;



    public String getSystem_details() {
        return system_details;
    }

    public void setSystem_details(String system_details) {
        this.system_details = system_details;
    }

    public String getDev_environment() {
        return dev_environment;
    }

    public void setDev_environment(String dev_environment) {
        this.dev_environment = dev_environment;
    }

    public String getDev_scale() {
        return dev_scale;
    }

    public void setDev_scale(String dev_scale) {
        this.dev_scale = dev_scale;
    }


    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry;
    }

    public String getSystem_sum() {
        return system_sum;
    }

    public void setSystem_sum(String system_sum) {
        this.system_sum = system_sum;
    }

    public String getProjects_name() {
        return projects_name;
    }

    public void setProjects_name(String projects_name) {
        this.projects_name = projects_name;
    }
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
