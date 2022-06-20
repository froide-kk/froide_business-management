import org.seasar.doma.*;

import java.util.Date;

@Entity(metamodel = @Metamodel)
public class Work_histories {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;
    Integer project_id;
    Date work_start;
    Date work_end;
    Integer employee_id;
    String dev_scale;
    String industry;
    String system_details;
    String system_sum;
    String dev_environment;
    String role;

    String dpp_name;

    Integer delete_flag;

    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public Integer getProject_id() {
        return project_id;
    }
    public void setProject_id(Integer project_id) {
        this.project_id = project_id;
    }
    public Date getWork_end() {
        return work_end;
    }
    public void setWork_end(Date work_end) {
        this.work_end = work_end;
    }
    public Integer getEmployee_id() {
        return employee_id;
    }
    public void setEmployee_id(Integer employee_id) {
        this.employee_id = employee_id;
    }
    public Integer getDelete_flag() {
        return delete_flag;
    }
    public void setDelete_flag(Integer delete_flag) {
        this.delete_flag = delete_flag;
    }
    public Date getWork_start() {
        return work_start;
    }
    public void setWork_start(Date work_start) {
        this.work_start = work_start;
    }
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

    public void setWork_start(java.sql.Date work_start) {
        this.work_start = work_start;
    }

    public void setWork_end(java.sql.Date work_end) {
        this.work_end = work_end;
    }
}